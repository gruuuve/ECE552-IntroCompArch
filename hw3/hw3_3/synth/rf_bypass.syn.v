/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12-SP3
// Date      : Thu Oct 15 21:10:55 2020
/////////////////////////////////////////////////////////////


module dff_0 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n1, n2;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n1), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n1) );
endmodule


module dff_15 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_14 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_13 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_12 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_11 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_10 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_9 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_8 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_7 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_6 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_5 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_4 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_3 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_2 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_1 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module reg_16_7 ( .q({\q<15> , \q<14> , \q<13> , \q<12> , \q<11> , \q<10> , 
        \q<9> , \q<8> , \q<7> , \q<6> , \q<5> , \q<4> , \q<3> , \q<2> , \q<1> , 
        \q<0> }), .d({\d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , 
        \d<9> , \d<8> , \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , 
        \d<0> }), wr, clk, rst );
  input \d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , \d<9> , \d<8> ,
         \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , \d<0> , wr,
         clk, rst;
  output \q<15> , \q<14> , \q<13> , \q<12> , \q<11> , \q<10> , \q<9> , \q<8> ,
         \q<7> , \q<6> , \q<5> , \q<4> , \q<3> , \q<2> , \q<1> , \q<0> ;
  wire   en_clk, n1, n2, n3, n4, n5;

  dff_0 \ff0[0]  ( .q(\q<0> ), .d(\d<0> ), .clk(n2), .rst(rst) );
  dff_1 \ff0[1]  ( .q(\q<1> ), .d(\d<1> ), .clk(n2), .rst(n4) );
  dff_2 \ff0[2]  ( .q(\q<2> ), .d(\d<2> ), .clk(n2), .rst(n4) );
  dff_3 \ff0[3]  ( .q(\q<3> ), .d(\d<3> ), .clk(n2), .rst(n4) );
  dff_4 \ff0[4]  ( .q(\q<4> ), .d(\d<4> ), .clk(n2), .rst(n4) );
  dff_5 \ff0[5]  ( .q(\q<5> ), .d(\d<5> ), .clk(n2), .rst(n4) );
  dff_6 \ff0[6]  ( .q(\q<6> ), .d(\d<6> ), .clk(n2), .rst(rst) );
  dff_7 \ff0[7]  ( .q(\q<7> ), .d(\d<7> ), .clk(n2), .rst(rst) );
  dff_8 \ff0[8]  ( .q(\q<8> ), .d(\d<8> ), .clk(n2), .rst(rst) );
  dff_9 \ff0[9]  ( .q(\q<9> ), .d(\d<9> ), .clk(n2), .rst(rst) );
  dff_10 \ff0[10]  ( .q(\q<10> ), .d(\d<10> ), .clk(n2), .rst(rst) );
  dff_11 \ff0[11]  ( .q(\q<11> ), .d(\d<11> ), .clk(n2), .rst(rst) );
  dff_12 \ff0[12]  ( .q(\q<12> ), .d(\d<12> ), .clk(n2), .rst(rst) );
  dff_13 \ff0[13]  ( .q(\q<13> ), .d(\d<13> ), .clk(n2), .rst(rst) );
  dff_14 \ff0[14]  ( .q(\q<14> ), .d(\d<14> ), .clk(n2), .rst(rst) );
  dff_15 \ff0[15]  ( .q(\q<15> ), .d(\d<15> ), .clk(n2), .rst(rst) );
  OR2X1 U1 ( .A(clk), .B(n3), .Y(en_clk) );
  INVX1 U2 ( .A(en_clk), .Y(n2) );
  OR2X1 U3 ( .A(rst), .B(wr), .Y(n1) );
  INVX1 U4 ( .A(n1), .Y(n3) );
  INVX1 U5 ( .A(n5), .Y(n4) );
  INVX1 U6 ( .A(rst), .Y(n5) );
endmodule


module dff_127 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_126 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_125 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_124 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_123 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_122 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_121 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_120 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_119 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_118 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_117 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_116 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_115 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_114 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_113 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_112 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module reg_16_6 ( .q({\q<15> , \q<14> , \q<13> , \q<12> , \q<11> , \q<10> , 
        \q<9> , \q<8> , \q<7> , \q<6> , \q<5> , \q<4> , \q<3> , \q<2> , \q<1> , 
        \q<0> }), .d({\d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , 
        \d<9> , \d<8> , \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , 
        \d<0> }), wr, clk, rst );
  input \d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , \d<9> , \d<8> ,
         \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , \d<0> , wr,
         clk, rst;
  output \q<15> , \q<14> , \q<13> , \q<12> , \q<11> , \q<10> , \q<9> , \q<8> ,
         \q<7> , \q<6> , \q<5> , \q<4> , \q<3> , \q<2> , \q<1> , \q<0> ;
  wire   en_clk, n1, n2, n3, n4, n5, n6;

  dff_112 \ff0[0]  ( .q(\q<0> ), .d(\d<0> ), .clk(n2), .rst(n5) );
  dff_113 \ff0[1]  ( .q(\q<1> ), .d(\d<1> ), .clk(n2), .rst(n5) );
  dff_114 \ff0[2]  ( .q(\q<2> ), .d(\d<2> ), .clk(n2), .rst(n5) );
  dff_115 \ff0[3]  ( .q(\q<3> ), .d(\d<3> ), .clk(n2), .rst(n5) );
  dff_116 \ff0[4]  ( .q(\q<4> ), .d(\d<4> ), .clk(n2), .rst(n4) );
  dff_117 \ff0[5]  ( .q(\q<5> ), .d(\d<5> ), .clk(n2), .rst(n4) );
  dff_118 \ff0[6]  ( .q(\q<6> ), .d(\d<6> ), .clk(n2), .rst(n4) );
  dff_119 \ff0[7]  ( .q(\q<7> ), .d(\d<7> ), .clk(n2), .rst(n4) );
  dff_120 \ff0[8]  ( .q(\q<8> ), .d(\d<8> ), .clk(n2), .rst(n4) );
  dff_121 \ff0[9]  ( .q(\q<9> ), .d(\d<9> ), .clk(n2), .rst(n4) );
  dff_122 \ff0[10]  ( .q(\q<10> ), .d(\d<10> ), .clk(n2), .rst(n4) );
  dff_123 \ff0[11]  ( .q(\q<11> ), .d(\d<11> ), .clk(n2), .rst(n4) );
  dff_124 \ff0[12]  ( .q(\q<12> ), .d(\d<12> ), .clk(n2), .rst(n4) );
  dff_125 \ff0[13]  ( .q(\q<13> ), .d(\d<13> ), .clk(n2), .rst(n4) );
  dff_126 \ff0[14]  ( .q(\q<14> ), .d(\d<14> ), .clk(n2), .rst(n4) );
  dff_127 \ff0[15]  ( .q(\q<15> ), .d(\d<15> ), .clk(n2), .rst(n4) );
  OR2X1 U1 ( .A(clk), .B(n3), .Y(en_clk) );
  INVX1 U2 ( .A(en_clk), .Y(n2) );
  OR2X1 U3 ( .A(n4), .B(wr), .Y(n1) );
  INVX1 U4 ( .A(n1), .Y(n3) );
  INVX1 U5 ( .A(n6), .Y(n4) );
  INVX1 U6 ( .A(n6), .Y(n5) );
  INVX1 U7 ( .A(rst), .Y(n6) );
endmodule


module dff_31 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_30 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_29 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_28 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_27 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_26 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_25 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_24 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_23 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_22 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_21 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_20 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_19 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_18 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_17 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_16 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module reg_16_0 ( .q({\q<15> , \q<14> , \q<13> , \q<12> , \q<11> , \q<10> , 
        \q<9> , \q<8> , \q<7> , \q<6> , \q<5> , \q<4> , \q<3> , \q<2> , \q<1> , 
        \q<0> }), .d({\d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , 
        \d<9> , \d<8> , \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , 
        \d<0> }), wr, clk, rst );
  input \d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , \d<9> , \d<8> ,
         \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , \d<0> , wr,
         clk, rst;
  output \q<15> , \q<14> , \q<13> , \q<12> , \q<11> , \q<10> , \q<9> , \q<8> ,
         \q<7> , \q<6> , \q<5> , \q<4> , \q<3> , \q<2> , \q<1> , \q<0> ;
  wire   en_clk, n2, n3, n4, n5, n6, n7;

  dff_16 \ff0[0]  ( .q(\q<0> ), .d(\d<0> ), .clk(n2), .rst(n5) );
  dff_17 \ff0[1]  ( .q(\q<1> ), .d(\d<1> ), .clk(n2), .rst(n5) );
  dff_18 \ff0[2]  ( .q(\q<2> ), .d(\d<2> ), .clk(n2), .rst(n5) );
  dff_19 \ff0[3]  ( .q(\q<3> ), .d(\d<3> ), .clk(n2), .rst(n5) );
  dff_20 \ff0[4]  ( .q(\q<4> ), .d(\d<4> ), .clk(n2), .rst(n4) );
  dff_21 \ff0[5]  ( .q(\q<5> ), .d(\d<5> ), .clk(n2), .rst(n4) );
  dff_22 \ff0[6]  ( .q(\q<6> ), .d(\d<6> ), .clk(n2), .rst(n4) );
  dff_23 \ff0[7]  ( .q(\q<7> ), .d(\d<7> ), .clk(n2), .rst(n4) );
  dff_24 \ff0[8]  ( .q(\q<8> ), .d(\d<8> ), .clk(n2), .rst(n4) );
  dff_25 \ff0[9]  ( .q(\q<9> ), .d(\d<9> ), .clk(n2), .rst(n4) );
  dff_26 \ff0[10]  ( .q(\q<10> ), .d(\d<10> ), .clk(n2), .rst(n4) );
  dff_27 \ff0[11]  ( .q(\q<11> ), .d(\d<11> ), .clk(n2), .rst(n4) );
  dff_28 \ff0[12]  ( .q(\q<12> ), .d(\d<12> ), .clk(n2), .rst(n4) );
  dff_29 \ff0[13]  ( .q(\q<13> ), .d(\d<13> ), .clk(n2), .rst(n4) );
  dff_30 \ff0[14]  ( .q(\q<14> ), .d(\d<14> ), .clk(n2), .rst(n4) );
  dff_31 \ff0[15]  ( .q(\q<15> ), .d(\d<15> ), .clk(n2), .rst(n4) );
  OR2X1 U1 ( .A(clk), .B(n3), .Y(en_clk) );
  INVX1 U2 ( .A(en_clk), .Y(n2) );
  OR2X1 U3 ( .A(n4), .B(wr), .Y(n7) );
  INVX1 U4 ( .A(n7), .Y(n3) );
  INVX1 U5 ( .A(n6), .Y(n4) );
  INVX1 U6 ( .A(n6), .Y(n5) );
  INVX1 U7 ( .A(rst), .Y(n6) );
endmodule


module dff_47 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_46 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_45 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_44 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_43 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_42 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_41 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_40 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_39 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_38 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_37 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_36 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_35 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_34 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_33 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_32 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module reg_16_1 ( .q({\q<15> , \q<14> , \q<13> , \q<12> , \q<11> , \q<10> , 
        \q<9> , \q<8> , \q<7> , \q<6> , \q<5> , \q<4> , \q<3> , \q<2> , \q<1> , 
        \q<0> }), .d({\d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , 
        \d<9> , \d<8> , \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , 
        \d<0> }), wr, clk, rst );
  input \d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , \d<9> , \d<8> ,
         \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , \d<0> , wr,
         clk, rst;
  output \q<15> , \q<14> , \q<13> , \q<12> , \q<11> , \q<10> , \q<9> , \q<8> ,
         \q<7> , \q<6> , \q<5> , \q<4> , \q<3> , \q<2> , \q<1> , \q<0> ;
  wire   en_clk, n2, n3, n4, n5, n6, n7;

  dff_32 \ff0[0]  ( .q(\q<0> ), .d(\d<0> ), .clk(n2), .rst(n5) );
  dff_33 \ff0[1]  ( .q(\q<1> ), .d(\d<1> ), .clk(n2), .rst(n5) );
  dff_34 \ff0[2]  ( .q(\q<2> ), .d(\d<2> ), .clk(n2), .rst(n5) );
  dff_35 \ff0[3]  ( .q(\q<3> ), .d(\d<3> ), .clk(n2), .rst(n5) );
  dff_36 \ff0[4]  ( .q(\q<4> ), .d(\d<4> ), .clk(n2), .rst(n4) );
  dff_37 \ff0[5]  ( .q(\q<5> ), .d(\d<5> ), .clk(n2), .rst(n4) );
  dff_38 \ff0[6]  ( .q(\q<6> ), .d(\d<6> ), .clk(n2), .rst(n4) );
  dff_39 \ff0[7]  ( .q(\q<7> ), .d(\d<7> ), .clk(n2), .rst(n4) );
  dff_40 \ff0[8]  ( .q(\q<8> ), .d(\d<8> ), .clk(n2), .rst(n4) );
  dff_41 \ff0[9]  ( .q(\q<9> ), .d(\d<9> ), .clk(n2), .rst(n4) );
  dff_42 \ff0[10]  ( .q(\q<10> ), .d(\d<10> ), .clk(n2), .rst(n4) );
  dff_43 \ff0[11]  ( .q(\q<11> ), .d(\d<11> ), .clk(n2), .rst(n4) );
  dff_44 \ff0[12]  ( .q(\q<12> ), .d(\d<12> ), .clk(n2), .rst(n4) );
  dff_45 \ff0[13]  ( .q(\q<13> ), .d(\d<13> ), .clk(n2), .rst(n4) );
  dff_46 \ff0[14]  ( .q(\q<14> ), .d(\d<14> ), .clk(n2), .rst(n4) );
  dff_47 \ff0[15]  ( .q(\q<15> ), .d(\d<15> ), .clk(n2), .rst(n4) );
  OR2X1 U1 ( .A(clk), .B(n3), .Y(en_clk) );
  INVX1 U2 ( .A(en_clk), .Y(n2) );
  OR2X1 U3 ( .A(n4), .B(wr), .Y(n7) );
  INVX1 U4 ( .A(n7), .Y(n3) );
  INVX1 U5 ( .A(n6), .Y(n4) );
  INVX1 U6 ( .A(n6), .Y(n5) );
  INVX1 U7 ( .A(rst), .Y(n6) );
endmodule


module dff_63 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_62 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_61 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_60 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_59 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_58 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_57 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_56 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_55 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_54 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_53 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_52 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_51 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_50 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_49 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_48 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module reg_16_2 ( .q({\q<15> , \q<14> , \q<13> , \q<12> , \q<11> , \q<10> , 
        \q<9> , \q<8> , \q<7> , \q<6> , \q<5> , \q<4> , \q<3> , \q<2> , \q<1> , 
        \q<0> }), .d({\d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , 
        \d<9> , \d<8> , \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , 
        \d<0> }), wr, clk, rst );
  input \d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , \d<9> , \d<8> ,
         \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , \d<0> , wr,
         clk, rst;
  output \q<15> , \q<14> , \q<13> , \q<12> , \q<11> , \q<10> , \q<9> , \q<8> ,
         \q<7> , \q<6> , \q<5> , \q<4> , \q<3> , \q<2> , \q<1> , \q<0> ;
  wire   en_clk, n2, n3, n4, n5, n6, n7;

  dff_48 \ff0[0]  ( .q(\q<0> ), .d(\d<0> ), .clk(n2), .rst(n5) );
  dff_49 \ff0[1]  ( .q(\q<1> ), .d(\d<1> ), .clk(n2), .rst(n5) );
  dff_50 \ff0[2]  ( .q(\q<2> ), .d(\d<2> ), .clk(n2), .rst(n5) );
  dff_51 \ff0[3]  ( .q(\q<3> ), .d(\d<3> ), .clk(n2), .rst(n5) );
  dff_52 \ff0[4]  ( .q(\q<4> ), .d(\d<4> ), .clk(n2), .rst(n4) );
  dff_53 \ff0[5]  ( .q(\q<5> ), .d(\d<5> ), .clk(n2), .rst(n4) );
  dff_54 \ff0[6]  ( .q(\q<6> ), .d(\d<6> ), .clk(n2), .rst(n4) );
  dff_55 \ff0[7]  ( .q(\q<7> ), .d(\d<7> ), .clk(n2), .rst(n4) );
  dff_56 \ff0[8]  ( .q(\q<8> ), .d(\d<8> ), .clk(n2), .rst(n4) );
  dff_57 \ff0[9]  ( .q(\q<9> ), .d(\d<9> ), .clk(n2), .rst(n4) );
  dff_58 \ff0[10]  ( .q(\q<10> ), .d(\d<10> ), .clk(n2), .rst(n4) );
  dff_59 \ff0[11]  ( .q(\q<11> ), .d(\d<11> ), .clk(n2), .rst(n4) );
  dff_60 \ff0[12]  ( .q(\q<12> ), .d(\d<12> ), .clk(n2), .rst(n4) );
  dff_61 \ff0[13]  ( .q(\q<13> ), .d(\d<13> ), .clk(n2), .rst(n4) );
  dff_62 \ff0[14]  ( .q(\q<14> ), .d(\d<14> ), .clk(n2), .rst(n4) );
  dff_63 \ff0[15]  ( .q(\q<15> ), .d(\d<15> ), .clk(n2), .rst(n4) );
  OR2X1 U1 ( .A(clk), .B(n3), .Y(en_clk) );
  INVX1 U2 ( .A(en_clk), .Y(n2) );
  OR2X1 U3 ( .A(n4), .B(wr), .Y(n7) );
  INVX1 U4 ( .A(n7), .Y(n3) );
  INVX1 U5 ( .A(n6), .Y(n4) );
  INVX1 U6 ( .A(n6), .Y(n5) );
  INVX1 U7 ( .A(rst), .Y(n6) );
endmodule


module dff_79 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_78 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_77 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_76 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_75 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_74 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_73 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_72 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_71 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_70 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_69 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_68 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_67 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_66 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_65 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_64 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module reg_16_3 ( .q({\q<15> , \q<14> , \q<13> , \q<12> , \q<11> , \q<10> , 
        \q<9> , \q<8> , \q<7> , \q<6> , \q<5> , \q<4> , \q<3> , \q<2> , \q<1> , 
        \q<0> }), .d({\d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , 
        \d<9> , \d<8> , \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , 
        \d<0> }), wr, clk, rst );
  input \d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , \d<9> , \d<8> ,
         \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , \d<0> , wr,
         clk, rst;
  output \q<15> , \q<14> , \q<13> , \q<12> , \q<11> , \q<10> , \q<9> , \q<8> ,
         \q<7> , \q<6> , \q<5> , \q<4> , \q<3> , \q<2> , \q<1> , \q<0> ;
  wire   en_clk, n2, n3, n4, n5, n6, n7;

  dff_64 \ff0[0]  ( .q(\q<0> ), .d(\d<0> ), .clk(n2), .rst(n5) );
  dff_65 \ff0[1]  ( .q(\q<1> ), .d(\d<1> ), .clk(n2), .rst(n5) );
  dff_66 \ff0[2]  ( .q(\q<2> ), .d(\d<2> ), .clk(n2), .rst(n5) );
  dff_67 \ff0[3]  ( .q(\q<3> ), .d(\d<3> ), .clk(n2), .rst(n5) );
  dff_68 \ff0[4]  ( .q(\q<4> ), .d(\d<4> ), .clk(n2), .rst(n4) );
  dff_69 \ff0[5]  ( .q(\q<5> ), .d(\d<5> ), .clk(n2), .rst(n4) );
  dff_70 \ff0[6]  ( .q(\q<6> ), .d(\d<6> ), .clk(n2), .rst(n4) );
  dff_71 \ff0[7]  ( .q(\q<7> ), .d(\d<7> ), .clk(n2), .rst(n4) );
  dff_72 \ff0[8]  ( .q(\q<8> ), .d(\d<8> ), .clk(n2), .rst(n4) );
  dff_73 \ff0[9]  ( .q(\q<9> ), .d(\d<9> ), .clk(n2), .rst(n4) );
  dff_74 \ff0[10]  ( .q(\q<10> ), .d(\d<10> ), .clk(n2), .rst(n4) );
  dff_75 \ff0[11]  ( .q(\q<11> ), .d(\d<11> ), .clk(n2), .rst(n4) );
  dff_76 \ff0[12]  ( .q(\q<12> ), .d(\d<12> ), .clk(n2), .rst(n4) );
  dff_77 \ff0[13]  ( .q(\q<13> ), .d(\d<13> ), .clk(n2), .rst(n4) );
  dff_78 \ff0[14]  ( .q(\q<14> ), .d(\d<14> ), .clk(n2), .rst(n4) );
  dff_79 \ff0[15]  ( .q(\q<15> ), .d(\d<15> ), .clk(n2), .rst(n4) );
  OR2X1 U1 ( .A(clk), .B(n3), .Y(en_clk) );
  INVX1 U2 ( .A(en_clk), .Y(n2) );
  OR2X1 U3 ( .A(n4), .B(wr), .Y(n7) );
  INVX1 U4 ( .A(n7), .Y(n3) );
  INVX1 U5 ( .A(n6), .Y(n4) );
  INVX1 U6 ( .A(n6), .Y(n5) );
  INVX1 U7 ( .A(rst), .Y(n6) );
endmodule


module dff_95 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_94 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_93 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_92 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_91 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_90 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_89 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_88 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_87 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_86 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_85 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_84 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_83 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_82 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_81 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_80 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module reg_16_4 ( .q({\q<15> , \q<14> , \q<13> , \q<12> , \q<11> , \q<10> , 
        \q<9> , \q<8> , \q<7> , \q<6> , \q<5> , \q<4> , \q<3> , \q<2> , \q<1> , 
        \q<0> }), .d({\d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , 
        \d<9> , \d<8> , \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , 
        \d<0> }), wr, clk, rst );
  input \d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , \d<9> , \d<8> ,
         \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , \d<0> , wr,
         clk, rst;
  output \q<15> , \q<14> , \q<13> , \q<12> , \q<11> , \q<10> , \q<9> , \q<8> ,
         \q<7> , \q<6> , \q<5> , \q<4> , \q<3> , \q<2> , \q<1> , \q<0> ;
  wire   en_clk, n2, n3, n4, n5, n6, n7;

  dff_80 \ff0[0]  ( .q(\q<0> ), .d(\d<0> ), .clk(n2), .rst(n5) );
  dff_81 \ff0[1]  ( .q(\q<1> ), .d(\d<1> ), .clk(n2), .rst(n5) );
  dff_82 \ff0[2]  ( .q(\q<2> ), .d(\d<2> ), .clk(n2), .rst(n5) );
  dff_83 \ff0[3]  ( .q(\q<3> ), .d(\d<3> ), .clk(n2), .rst(n5) );
  dff_84 \ff0[4]  ( .q(\q<4> ), .d(\d<4> ), .clk(n2), .rst(n4) );
  dff_85 \ff0[5]  ( .q(\q<5> ), .d(\d<5> ), .clk(n2), .rst(n4) );
  dff_86 \ff0[6]  ( .q(\q<6> ), .d(\d<6> ), .clk(n2), .rst(n4) );
  dff_87 \ff0[7]  ( .q(\q<7> ), .d(\d<7> ), .clk(n2), .rst(n4) );
  dff_88 \ff0[8]  ( .q(\q<8> ), .d(\d<8> ), .clk(n2), .rst(n4) );
  dff_89 \ff0[9]  ( .q(\q<9> ), .d(\d<9> ), .clk(n2), .rst(n4) );
  dff_90 \ff0[10]  ( .q(\q<10> ), .d(\d<10> ), .clk(n2), .rst(n4) );
  dff_91 \ff0[11]  ( .q(\q<11> ), .d(\d<11> ), .clk(n2), .rst(n4) );
  dff_92 \ff0[12]  ( .q(\q<12> ), .d(\d<12> ), .clk(n2), .rst(n4) );
  dff_93 \ff0[13]  ( .q(\q<13> ), .d(\d<13> ), .clk(n2), .rst(n4) );
  dff_94 \ff0[14]  ( .q(\q<14> ), .d(\d<14> ), .clk(n2), .rst(n4) );
  dff_95 \ff0[15]  ( .q(\q<15> ), .d(\d<15> ), .clk(n2), .rst(n4) );
  OR2X1 U1 ( .A(clk), .B(n3), .Y(en_clk) );
  INVX1 U2 ( .A(en_clk), .Y(n2) );
  OR2X1 U3 ( .A(n4), .B(wr), .Y(n7) );
  INVX1 U4 ( .A(n7), .Y(n3) );
  INVX1 U5 ( .A(n6), .Y(n4) );
  INVX1 U6 ( .A(n6), .Y(n5) );
  INVX1 U7 ( .A(rst), .Y(n6) );
endmodule


module dff_111 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_110 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_109 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_108 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_107 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_106 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_105 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_104 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_103 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_102 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_101 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_100 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_99 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_98 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_97 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module dff_96 ( q, d, clk, rst );
  input d, clk, rst;
  output q;
  wire   N3, n2, n3;

  DFFPOSX1 state_reg ( .D(n2), .CLK(clk), .Q(q) );
  OR2X1 U3 ( .A(rst), .B(n3), .Y(N3) );
  INVX1 U4 ( .A(N3), .Y(n2) );
  INVX1 U5 ( .A(d), .Y(n3) );
endmodule


module reg_16_5 ( .q({\q<15> , \q<14> , \q<13> , \q<12> , \q<11> , \q<10> , 
        \q<9> , \q<8> , \q<7> , \q<6> , \q<5> , \q<4> , \q<3> , \q<2> , \q<1> , 
        \q<0> }), .d({\d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , 
        \d<9> , \d<8> , \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , 
        \d<0> }), wr, clk, rst );
  input \d<15> , \d<14> , \d<13> , \d<12> , \d<11> , \d<10> , \d<9> , \d<8> ,
         \d<7> , \d<6> , \d<5> , \d<4> , \d<3> , \d<2> , \d<1> , \d<0> , wr,
         clk, rst;
  output \q<15> , \q<14> , \q<13> , \q<12> , \q<11> , \q<10> , \q<9> , \q<8> ,
         \q<7> , \q<6> , \q<5> , \q<4> , \q<3> , \q<2> , \q<1> , \q<0> ;
  wire   en_clk, n2, n3, n4, n5, n6, n7;

  dff_96 \ff0[0]  ( .q(\q<0> ), .d(\d<0> ), .clk(n2), .rst(n5) );
  dff_97 \ff0[1]  ( .q(\q<1> ), .d(\d<1> ), .clk(n2), .rst(n5) );
  dff_98 \ff0[2]  ( .q(\q<2> ), .d(\d<2> ), .clk(n2), .rst(n5) );
  dff_99 \ff0[3]  ( .q(\q<3> ), .d(\d<3> ), .clk(n2), .rst(n5) );
  dff_100 \ff0[4]  ( .q(\q<4> ), .d(\d<4> ), .clk(n2), .rst(n4) );
  dff_101 \ff0[5]  ( .q(\q<5> ), .d(\d<5> ), .clk(n2), .rst(n4) );
  dff_102 \ff0[6]  ( .q(\q<6> ), .d(\d<6> ), .clk(n2), .rst(n4) );
  dff_103 \ff0[7]  ( .q(\q<7> ), .d(\d<7> ), .clk(n2), .rst(n4) );
  dff_104 \ff0[8]  ( .q(\q<8> ), .d(\d<8> ), .clk(n2), .rst(n4) );
  dff_105 \ff0[9]  ( .q(\q<9> ), .d(\d<9> ), .clk(n2), .rst(n4) );
  dff_106 \ff0[10]  ( .q(\q<10> ), .d(\d<10> ), .clk(n2), .rst(n4) );
  dff_107 \ff0[11]  ( .q(\q<11> ), .d(\d<11> ), .clk(n2), .rst(n4) );
  dff_108 \ff0[12]  ( .q(\q<12> ), .d(\d<12> ), .clk(n2), .rst(n4) );
  dff_109 \ff0[13]  ( .q(\q<13> ), .d(\d<13> ), .clk(n2), .rst(n4) );
  dff_110 \ff0[14]  ( .q(\q<14> ), .d(\d<14> ), .clk(n2), .rst(n4) );
  dff_111 \ff0[15]  ( .q(\q<15> ), .d(\d<15> ), .clk(n2), .rst(n4) );
  OR2X1 U1 ( .A(clk), .B(n3), .Y(en_clk) );
  INVX1 U2 ( .A(en_clk), .Y(n2) );
  OR2X1 U3 ( .A(n4), .B(wr), .Y(n7) );
  INVX1 U4 ( .A(n7), .Y(n3) );
  INVX1 U5 ( .A(n6), .Y(n4) );
  INVX1 U6 ( .A(n6), .Y(n5) );
  INVX1 U7 ( .A(rst), .Y(n6) );
endmodule


module rf ( .read1data({\read1data<15> , \read1data<14> , \read1data<13> , 
        \read1data<12> , \read1data<11> , \read1data<10> , \read1data<9> , 
        \read1data<8> , \read1data<7> , \read1data<6> , \read1data<5> , 
        \read1data<4> , \read1data<3> , \read1data<2> , \read1data<1> , 
        \read1data<0> }), .read2data({\read2data<15> , \read2data<14> , 
        \read2data<13> , \read2data<12> , \read2data<11> , \read2data<10> , 
        \read2data<9> , \read2data<8> , \read2data<7> , \read2data<6> , 
        \read2data<5> , \read2data<4> , \read2data<3> , \read2data<2> , 
        \read2data<1> , \read2data<0> }), err, clk, rst, .read1regsel({
        \read1regsel<2> , \read1regsel<1> , \read1regsel<0> }), .read2regsel({
        \read2regsel<2> , \read2regsel<1> , \read2regsel<0> }), .writeregsel({
        \writeregsel<2> , \writeregsel<1> , \writeregsel<0> }), .writedata({
        \writedata<15> , \writedata<14> , \writedata<13> , \writedata<12> , 
        \writedata<11> , \writedata<10> , \writedata<9> , \writedata<8> , 
        \writedata<7> , \writedata<6> , \writedata<5> , \writedata<4> , 
        \writedata<3> , \writedata<2> , \writedata<1> , \writedata<0> }), 
        write );
  input clk, rst, \read1regsel<2> , \read1regsel<1> , \read1regsel<0> ,
         \read2regsel<2> , \read2regsel<1> , \read2regsel<0> ,
         \writeregsel<2> , \writeregsel<1> , \writeregsel<0> , \writedata<15> ,
         \writedata<14> , \writedata<13> , \writedata<12> , \writedata<11> ,
         \writedata<10> , \writedata<9> , \writedata<8> , \writedata<7> ,
         \writedata<6> , \writedata<5> , \writedata<4> , \writedata<3> ,
         \writedata<2> , \writedata<1> , \writedata<0> , write;
  output \read1data<15> , \read1data<14> , \read1data<13> , \read1data<12> ,
         \read1data<11> , \read1data<10> , \read1data<9> , \read1data<8> ,
         \read1data<7> , \read1data<6> , \read1data<5> , \read1data<4> ,
         \read1data<3> , \read1data<2> , \read1data<1> , \read1data<0> ,
         \read2data<15> , \read2data<14> , \read2data<13> , \read2data<12> ,
         \read2data<11> , \read2data<10> , \read2data<9> , \read2data<8> ,
         \read2data<7> , \read2data<6> , \read2data<5> , \read2data<4> ,
         \read2data<3> , \read2data<2> , \read2data<1> , \read2data<0> , err;
  wire   n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         \reg_in<7><15> , \reg_in<7><14> , \reg_in<7><13> , \reg_in<7><12> ,
         \reg_in<7><11> , \reg_in<7><10> , \reg_in<7><9> , \reg_in<7><8> ,
         \reg_in<7><7> , \reg_in<7><6> , \reg_in<7><5> , \reg_in<7><4> ,
         \reg_in<7><3> , \reg_in<7><2> , \reg_in<7><1> , \reg_in<7><0> ,
         \reg_in<6><15> , \reg_in<6><14> , \reg_in<6><13> , \reg_in<6><12> ,
         \reg_in<6><11> , \reg_in<6><10> , \reg_in<6><9> , \reg_in<6><8> ,
         \reg_in<6><7> , \reg_in<6><6> , \reg_in<6><5> , \reg_in<6><4> ,
         \reg_in<6><3> , \reg_in<6><2> , \reg_in<6><1> , \reg_in<6><0> ,
         \reg_in<5><15> , \reg_in<5><14> , \reg_in<5><13> , \reg_in<5><12> ,
         \reg_in<5><11> , \reg_in<5><10> , \reg_in<5><9> , \reg_in<5><8> ,
         \reg_in<5><7> , \reg_in<5><6> , \reg_in<5><5> , \reg_in<5><4> ,
         \reg_in<5><3> , \reg_in<5><2> , \reg_in<5><1> , \reg_in<5><0> ,
         \reg_in<4><15> , \reg_in<4><14> , \reg_in<4><13> , \reg_in<4><12> ,
         \reg_in<4><11> , \reg_in<4><10> , \reg_in<4><9> , \reg_in<4><8> ,
         \reg_in<4><7> , \reg_in<4><6> , \reg_in<4><5> , \reg_in<4><4> ,
         \reg_in<4><3> , \reg_in<4><2> , \reg_in<4><1> , \reg_in<4><0> ,
         \reg_in<3><15> , \reg_in<3><14> , \reg_in<3><13> , \reg_in<3><12> ,
         \reg_in<3><11> , \reg_in<3><10> , \reg_in<3><9> , \reg_in<3><8> ,
         \reg_in<3><7> , \reg_in<3><6> , \reg_in<3><5> , \reg_in<3><4> ,
         \reg_in<3><3> , \reg_in<3><2> , \reg_in<3><1> , \reg_in<3><0> ,
         \reg_in<2><15> , \reg_in<2><14> , \reg_in<2><13> , \reg_in<2><12> ,
         \reg_in<2><11> , \reg_in<2><10> , \reg_in<2><9> , \reg_in<2><8> ,
         \reg_in<2><7> , \reg_in<2><6> , \reg_in<2><5> , \reg_in<2><4> ,
         \reg_in<2><3> , \reg_in<2><2> , \reg_in<2><1> , \reg_in<2><0> ,
         \reg_in<1><15> , \reg_in<1><14> , \reg_in<1><13> , \reg_in<1><12> ,
         \reg_in<1><11> , \reg_in<1><10> , \reg_in<1><9> , \reg_in<1><8> ,
         \reg_in<1><7> , \reg_in<1><6> , \reg_in<1><5> , \reg_in<1><4> ,
         \reg_in<1><3> , \reg_in<1><2> , \reg_in<1><1> , \reg_in<1><0> ,
         \reg_in<0><15> , \reg_in<0><14> , \reg_in<0><13> , \reg_in<0><12> ,
         \reg_in<0><11> , \reg_in<0><10> , \reg_in<0><9> , \reg_in<0><8> ,
         \reg_in<0><7> , \reg_in<0><6> , \reg_in<0><5> , \reg_in<0><4> ,
         \reg_in<0><3> , \reg_in<0><2> , \reg_in<0><1> , \reg_in<0><0> ,
         \reg_out<7><15> , \reg_out<7><14> , \reg_out<7><13> ,
         \reg_out<7><12> , \reg_out<7><11> , \reg_out<7><10> , \reg_out<7><9> ,
         \reg_out<7><8> , \reg_out<7><7> , \reg_out<7><6> , \reg_out<7><5> ,
         \reg_out<7><4> , \reg_out<7><3> , \reg_out<7><2> , \reg_out<7><1> ,
         \reg_out<7><0> , \reg_out<6><15> , \reg_out<6><14> , \reg_out<6><13> ,
         \reg_out<6><12> , \reg_out<6><11> , \reg_out<6><10> , \reg_out<6><9> ,
         \reg_out<6><8> , \reg_out<6><7> , \reg_out<6><6> , \reg_out<6><5> ,
         \reg_out<6><4> , \reg_out<6><3> , \reg_out<6><2> , \reg_out<6><1> ,
         \reg_out<6><0> , \reg_out<5><15> , \reg_out<5><14> , \reg_out<5><13> ,
         \reg_out<5><12> , \reg_out<5><11> , \reg_out<5><10> , \reg_out<5><9> ,
         \reg_out<5><8> , \reg_out<5><7> , \reg_out<5><6> , \reg_out<5><5> ,
         \reg_out<5><4> , \reg_out<5><3> , \reg_out<5><2> , \reg_out<5><1> ,
         \reg_out<5><0> , \reg_out<4><15> , \reg_out<4><14> , \reg_out<4><13> ,
         \reg_out<4><12> , \reg_out<4><11> , \reg_out<4><10> , \reg_out<4><9> ,
         \reg_out<4><8> , \reg_out<4><7> , \reg_out<4><6> , \reg_out<4><5> ,
         \reg_out<4><4> , \reg_out<4><3> , \reg_out<4><2> , \reg_out<4><1> ,
         \reg_out<4><0> , \reg_out<3><15> , \reg_out<3><14> , \reg_out<3><13> ,
         \reg_out<3><12> , \reg_out<3><11> , \reg_out<3><10> , \reg_out<3><9> ,
         \reg_out<3><8> , \reg_out<3><7> , \reg_out<3><6> , \reg_out<3><5> ,
         \reg_out<3><4> , \reg_out<3><3> , \reg_out<3><2> , \reg_out<3><1> ,
         \reg_out<3><0> , \reg_out<2><15> , \reg_out<2><14> , \reg_out<2><13> ,
         \reg_out<2><12> , \reg_out<2><11> , \reg_out<2><10> , \reg_out<2><9> ,
         \reg_out<2><8> , \reg_out<2><7> , \reg_out<2><6> , \reg_out<2><5> ,
         \reg_out<2><4> , \reg_out<2><3> , \reg_out<2><2> , \reg_out<2><1> ,
         \reg_out<2><0> , \reg_out<1><15> , \reg_out<1><14> , \reg_out<1><13> ,
         \reg_out<1><12> , \reg_out<1><11> , \reg_out<1><10> , \reg_out<1><9> ,
         \reg_out<1><8> , \reg_out<1><7> , \reg_out<1><6> , \reg_out<1><5> ,
         \reg_out<1><4> , \reg_out<1><3> , \reg_out<1><2> , \reg_out<1><1> ,
         \reg_out<1><0> , \reg_out<0><15> , \reg_out<0><14> , \reg_out<0><13> ,
         \reg_out<0><12> , \reg_out<0><11> , \reg_out<0><10> , \reg_out<0><9> ,
         \reg_out<0><8> , \reg_out<0><7> , \reg_out<0><6> , \reg_out<0><5> ,
         \reg_out<0><4> , \reg_out<0><3> , \reg_out<0><2> , \reg_out<0><1> ,
         \reg_out<0><0> , \wr<7> , \wr<6> , \wr<5> , \wr<4> , \wr<3> , \wr<2> ,
         \wr<1> , \wr<0> , N93, N94, N95, N96, N97, N98, N99, N100, n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375;
  assign err = 1'b0;

  reg_16_7 reg0 ( .q({\reg_out<0><15> , \reg_out<0><14> , \reg_out<0><13> , 
        \reg_out<0><12> , \reg_out<0><11> , \reg_out<0><10> , \reg_out<0><9> , 
        \reg_out<0><8> , \reg_out<0><7> , \reg_out<0><6> , \reg_out<0><5> , 
        \reg_out<0><4> , \reg_out<0><3> , \reg_out<0><2> , \reg_out<0><1> , 
        \reg_out<0><0> }), .d({\reg_in<0><15> , \reg_in<0><14> , 
        \reg_in<0><13> , \reg_in<0><12> , \reg_in<0><11> , \reg_in<0><10> , 
        \reg_in<0><9> , \reg_in<0><8> , \reg_in<0><7> , \reg_in<0><6> , 
        \reg_in<0><5> , \reg_in<0><4> , \reg_in<0><3> , \reg_in<0><2> , 
        \reg_in<0><1> , \reg_in<0><0> }), .wr(\wr<0> ), .clk(clk), .rst(n195)
         );
  reg_16_6 reg1 ( .q({\reg_out<1><15> , \reg_out<1><14> , \reg_out<1><13> , 
        \reg_out<1><12> , \reg_out<1><11> , \reg_out<1><10> , \reg_out<1><9> , 
        \reg_out<1><8> , \reg_out<1><7> , \reg_out<1><6> , \reg_out<1><5> , 
        \reg_out<1><4> , \reg_out<1><3> , \reg_out<1><2> , \reg_out<1><1> , 
        \reg_out<1><0> }), .d({\reg_in<1><15> , \reg_in<1><14> , 
        \reg_in<1><13> , \reg_in<1><12> , \reg_in<1><11> , \reg_in<1><10> , 
        \reg_in<1><9> , \reg_in<1><8> , \reg_in<1><7> , \reg_in<1><6> , 
        \reg_in<1><5> , \reg_in<1><4> , \reg_in<1><3> , \reg_in<1><2> , 
        \reg_in<1><1> , \reg_in<1><0> }), .wr(\wr<1> ), .clk(clk), .rst(n196)
         );
  reg_16_5 reg2 ( .q({\reg_out<2><15> , \reg_out<2><14> , \reg_out<2><13> , 
        \reg_out<2><12> , \reg_out<2><11> , \reg_out<2><10> , \reg_out<2><9> , 
        \reg_out<2><8> , \reg_out<2><7> , \reg_out<2><6> , \reg_out<2><5> , 
        \reg_out<2><4> , \reg_out<2><3> , \reg_out<2><2> , \reg_out<2><1> , 
        \reg_out<2><0> }), .d({\reg_in<2><15> , \reg_in<2><14> , 
        \reg_in<2><13> , \reg_in<2><12> , \reg_in<2><11> , \reg_in<2><10> , 
        \reg_in<2><9> , \reg_in<2><8> , \reg_in<2><7> , \reg_in<2><6> , 
        \reg_in<2><5> , \reg_in<2><4> , \reg_in<2><3> , \reg_in<2><2> , 
        \reg_in<2><1> , \reg_in<2><0> }), .wr(\wr<2> ), .clk(clk), .rst(n194)
         );
  reg_16_4 reg3 ( .q({\reg_out<3><15> , \reg_out<3><14> , \reg_out<3><13> , 
        \reg_out<3><12> , \reg_out<3><11> , \reg_out<3><10> , \reg_out<3><9> , 
        \reg_out<3><8> , \reg_out<3><7> , \reg_out<3><6> , \reg_out<3><5> , 
        \reg_out<3><4> , \reg_out<3><3> , \reg_out<3><2> , \reg_out<3><1> , 
        \reg_out<3><0> }), .d({\reg_in<3><15> , \reg_in<3><14> , 
        \reg_in<3><13> , \reg_in<3><12> , \reg_in<3><11> , \reg_in<3><10> , 
        \reg_in<3><9> , \reg_in<3><8> , \reg_in<3><7> , \reg_in<3><6> , 
        \reg_in<3><5> , \reg_in<3><4> , \reg_in<3><3> , \reg_in<3><2> , 
        \reg_in<3><1> , \reg_in<3><0> }), .wr(\wr<3> ), .clk(clk), .rst(n194)
         );
  reg_16_3 reg4 ( .q({\reg_out<4><15> , \reg_out<4><14> , \reg_out<4><13> , 
        \reg_out<4><12> , \reg_out<4><11> , \reg_out<4><10> , \reg_out<4><9> , 
        \reg_out<4><8> , \reg_out<4><7> , \reg_out<4><6> , \reg_out<4><5> , 
        \reg_out<4><4> , \reg_out<4><3> , \reg_out<4><2> , \reg_out<4><1> , 
        \reg_out<4><0> }), .d({\reg_in<4><15> , \reg_in<4><14> , 
        \reg_in<4><13> , \reg_in<4><12> , \reg_in<4><11> , \reg_in<4><10> , 
        \reg_in<4><9> , \reg_in<4><8> , \reg_in<4><7> , \reg_in<4><6> , 
        \reg_in<4><5> , \reg_in<4><4> , \reg_in<4><3> , \reg_in<4><2> , 
        \reg_in<4><1> , \reg_in<4><0> }), .wr(\wr<4> ), .clk(clk), .rst(n194)
         );
  reg_16_2 reg5 ( .q({\reg_out<5><15> , \reg_out<5><14> , \reg_out<5><13> , 
        \reg_out<5><12> , \reg_out<5><11> , \reg_out<5><10> , \reg_out<5><9> , 
        \reg_out<5><8> , \reg_out<5><7> , \reg_out<5><6> , \reg_out<5><5> , 
        \reg_out<5><4> , \reg_out<5><3> , \reg_out<5><2> , \reg_out<5><1> , 
        \reg_out<5><0> }), .d({\reg_in<5><15> , \reg_in<5><14> , 
        \reg_in<5><13> , \reg_in<5><12> , \reg_in<5><11> , \reg_in<5><10> , 
        \reg_in<5><9> , \reg_in<5><8> , \reg_in<5><7> , \reg_in<5><6> , 
        \reg_in<5><5> , \reg_in<5><4> , \reg_in<5><3> , \reg_in<5><2> , 
        \reg_in<5><1> , \reg_in<5><0> }), .wr(\wr<5> ), .clk(clk), .rst(n196)
         );
  reg_16_1 reg6 ( .q({\reg_out<6><15> , \reg_out<6><14> , \reg_out<6><13> , 
        \reg_out<6><12> , \reg_out<6><11> , \reg_out<6><10> , \reg_out<6><9> , 
        \reg_out<6><8> , \reg_out<6><7> , \reg_out<6><6> , \reg_out<6><5> , 
        \reg_out<6><4> , \reg_out<6><3> , \reg_out<6><2> , \reg_out<6><1> , 
        \reg_out<6><0> }), .d({\reg_in<6><15> , \reg_in<6><14> , 
        \reg_in<6><13> , \reg_in<6><12> , \reg_in<6><11> , \reg_in<6><10> , 
        \reg_in<6><9> , \reg_in<6><8> , \reg_in<6><7> , \reg_in<6><6> , 
        \reg_in<6><5> , \reg_in<6><4> , \reg_in<6><3> , \reg_in<6><2> , 
        \reg_in<6><1> , \reg_in<6><0> }), .wr(\wr<6> ), .clk(clk), .rst(n196)
         );
  reg_16_0 reg7 ( .q({\reg_out<7><15> , \reg_out<7><14> , \reg_out<7><13> , 
        \reg_out<7><12> , \reg_out<7><11> , \reg_out<7><10> , \reg_out<7><9> , 
        \reg_out<7><8> , \reg_out<7><7> , \reg_out<7><6> , \reg_out<7><5> , 
        \reg_out<7><4> , \reg_out<7><3> , \reg_out<7><2> , \reg_out<7><1> , 
        \reg_out<7><0> }), .d({\reg_in<7><15> , \reg_in<7><14> , 
        \reg_in<7><13> , \reg_in<7><12> , \reg_in<7><11> , \reg_in<7><10> , 
        \reg_in<7><9> , \reg_in<7><8> , \reg_in<7><7> , \reg_in<7><6> , 
        \reg_in<7><5> , \reg_in<7><4> , \reg_in<7><3> , \reg_in<7><2> , 
        \reg_in<7><1> , \reg_in<7><0> }), .wr(\wr<7> ), .clk(clk), .rst(n196)
         );
  LATCH \reg_in_reg<7><15>  ( .CLK(N100), .D(\writedata<15> ), .Q(
        \reg_in<7><15> ) );
  LATCH \reg_in_reg<7><14>  ( .CLK(N100), .D(\writedata<14> ), .Q(
        \reg_in<7><14> ) );
  LATCH \reg_in_reg<7><13>  ( .CLK(N100), .D(\writedata<13> ), .Q(
        \reg_in<7><13> ) );
  LATCH \reg_in_reg<7><12>  ( .CLK(N100), .D(\writedata<12> ), .Q(
        \reg_in<7><12> ) );
  LATCH \reg_in_reg<7><11>  ( .CLK(N100), .D(\writedata<11> ), .Q(
        \reg_in<7><11> ) );
  LATCH \reg_in_reg<7><10>  ( .CLK(N100), .D(\writedata<10> ), .Q(
        \reg_in<7><10> ) );
  LATCH \reg_in_reg<7><9>  ( .CLK(N100), .D(\writedata<9> ), .Q(\reg_in<7><9> ) );
  LATCH \reg_in_reg<7><8>  ( .CLK(N100), .D(\writedata<8> ), .Q(\reg_in<7><8> ) );
  LATCH \reg_in_reg<7><7>  ( .CLK(N100), .D(\writedata<7> ), .Q(\reg_in<7><7> ) );
  LATCH \reg_in_reg<7><6>  ( .CLK(N100), .D(\writedata<6> ), .Q(\reg_in<7><6> ) );
  LATCH \reg_in_reg<7><5>  ( .CLK(N100), .D(\writedata<5> ), .Q(\reg_in<7><5> ) );
  LATCH \reg_in_reg<7><4>  ( .CLK(N100), .D(\writedata<4> ), .Q(\reg_in<7><4> ) );
  LATCH \reg_in_reg<7><3>  ( .CLK(N100), .D(\writedata<3> ), .Q(\reg_in<7><3> ) );
  LATCH \reg_in_reg<7><2>  ( .CLK(N100), .D(\writedata<2> ), .Q(\reg_in<7><2> ) );
  LATCH \reg_in_reg<7><1>  ( .CLK(N100), .D(\writedata<1> ), .Q(\reg_in<7><1> ) );
  LATCH \reg_in_reg<7><0>  ( .CLK(N100), .D(\writedata<0> ), .Q(\reg_in<7><0> ) );
  LATCH \reg_in_reg<6><15>  ( .CLK(N99), .D(\writedata<15> ), .Q(
        \reg_in<6><15> ) );
  LATCH \reg_in_reg<6><14>  ( .CLK(N99), .D(\writedata<14> ), .Q(
        \reg_in<6><14> ) );
  LATCH \reg_in_reg<6><13>  ( .CLK(N99), .D(\writedata<13> ), .Q(
        \reg_in<6><13> ) );
  LATCH \reg_in_reg<6><12>  ( .CLK(N99), .D(\writedata<12> ), .Q(
        \reg_in<6><12> ) );
  LATCH \reg_in_reg<6><11>  ( .CLK(N99), .D(\writedata<11> ), .Q(
        \reg_in<6><11> ) );
  LATCH \reg_in_reg<6><10>  ( .CLK(N99), .D(\writedata<10> ), .Q(
        \reg_in<6><10> ) );
  LATCH \reg_in_reg<6><9>  ( .CLK(N99), .D(\writedata<9> ), .Q(\reg_in<6><9> )
         );
  LATCH \reg_in_reg<6><8>  ( .CLK(N99), .D(\writedata<8> ), .Q(\reg_in<6><8> )
         );
  LATCH \reg_in_reg<6><7>  ( .CLK(N99), .D(\writedata<7> ), .Q(\reg_in<6><7> )
         );
  LATCH \reg_in_reg<6><6>  ( .CLK(N99), .D(\writedata<6> ), .Q(\reg_in<6><6> )
         );
  LATCH \reg_in_reg<6><5>  ( .CLK(N99), .D(\writedata<5> ), .Q(\reg_in<6><5> )
         );
  LATCH \reg_in_reg<6><4>  ( .CLK(N99), .D(\writedata<4> ), .Q(\reg_in<6><4> )
         );
  LATCH \reg_in_reg<6><3>  ( .CLK(N99), .D(\writedata<3> ), .Q(\reg_in<6><3> )
         );
  LATCH \reg_in_reg<6><2>  ( .CLK(N99), .D(\writedata<2> ), .Q(\reg_in<6><2> )
         );
  LATCH \reg_in_reg<6><1>  ( .CLK(N99), .D(\writedata<1> ), .Q(\reg_in<6><1> )
         );
  LATCH \reg_in_reg<6><0>  ( .CLK(N99), .D(\writedata<0> ), .Q(\reg_in<6><0> )
         );
  LATCH \reg_in_reg<5><15>  ( .CLK(N98), .D(\writedata<15> ), .Q(
        \reg_in<5><15> ) );
  LATCH \reg_in_reg<5><14>  ( .CLK(N98), .D(\writedata<14> ), .Q(
        \reg_in<5><14> ) );
  LATCH \reg_in_reg<5><13>  ( .CLK(N98), .D(\writedata<13> ), .Q(
        \reg_in<5><13> ) );
  LATCH \reg_in_reg<5><12>  ( .CLK(N98), .D(\writedata<12> ), .Q(
        \reg_in<5><12> ) );
  LATCH \reg_in_reg<5><11>  ( .CLK(N98), .D(\writedata<11> ), .Q(
        \reg_in<5><11> ) );
  LATCH \reg_in_reg<5><10>  ( .CLK(N98), .D(\writedata<10> ), .Q(
        \reg_in<5><10> ) );
  LATCH \reg_in_reg<5><9>  ( .CLK(N98), .D(\writedata<9> ), .Q(\reg_in<5><9> )
         );
  LATCH \reg_in_reg<5><8>  ( .CLK(N98), .D(\writedata<8> ), .Q(\reg_in<5><8> )
         );
  LATCH \reg_in_reg<5><7>  ( .CLK(N98), .D(\writedata<7> ), .Q(\reg_in<5><7> )
         );
  LATCH \reg_in_reg<5><6>  ( .CLK(N98), .D(\writedata<6> ), .Q(\reg_in<5><6> )
         );
  LATCH \reg_in_reg<5><5>  ( .CLK(N98), .D(\writedata<5> ), .Q(\reg_in<5><5> )
         );
  LATCH \reg_in_reg<5><4>  ( .CLK(N98), .D(\writedata<4> ), .Q(\reg_in<5><4> )
         );
  LATCH \reg_in_reg<5><3>  ( .CLK(N98), .D(\writedata<3> ), .Q(\reg_in<5><3> )
         );
  LATCH \reg_in_reg<5><2>  ( .CLK(N98), .D(\writedata<2> ), .Q(\reg_in<5><2> )
         );
  LATCH \reg_in_reg<5><1>  ( .CLK(N98), .D(\writedata<1> ), .Q(\reg_in<5><1> )
         );
  LATCH \reg_in_reg<5><0>  ( .CLK(N98), .D(\writedata<0> ), .Q(\reg_in<5><0> )
         );
  LATCH \reg_in_reg<4><15>  ( .CLK(N97), .D(\writedata<15> ), .Q(
        \reg_in<4><15> ) );
  LATCH \reg_in_reg<4><14>  ( .CLK(N97), .D(\writedata<14> ), .Q(
        \reg_in<4><14> ) );
  LATCH \reg_in_reg<4><13>  ( .CLK(N97), .D(\writedata<13> ), .Q(
        \reg_in<4><13> ) );
  LATCH \reg_in_reg<4><12>  ( .CLK(N97), .D(\writedata<12> ), .Q(
        \reg_in<4><12> ) );
  LATCH \reg_in_reg<4><11>  ( .CLK(N97), .D(\writedata<11> ), .Q(
        \reg_in<4><11> ) );
  LATCH \reg_in_reg<4><10>  ( .CLK(N97), .D(\writedata<10> ), .Q(
        \reg_in<4><10> ) );
  LATCH \reg_in_reg<4><9>  ( .CLK(N97), .D(\writedata<9> ), .Q(\reg_in<4><9> )
         );
  LATCH \reg_in_reg<4><8>  ( .CLK(N97), .D(\writedata<8> ), .Q(\reg_in<4><8> )
         );
  LATCH \reg_in_reg<4><7>  ( .CLK(N97), .D(\writedata<7> ), .Q(\reg_in<4><7> )
         );
  LATCH \reg_in_reg<4><6>  ( .CLK(N97), .D(\writedata<6> ), .Q(\reg_in<4><6> )
         );
  LATCH \reg_in_reg<4><5>  ( .CLK(N97), .D(\writedata<5> ), .Q(\reg_in<4><5> )
         );
  LATCH \reg_in_reg<4><4>  ( .CLK(N97), .D(\writedata<4> ), .Q(\reg_in<4><4> )
         );
  LATCH \reg_in_reg<4><3>  ( .CLK(N97), .D(\writedata<3> ), .Q(\reg_in<4><3> )
         );
  LATCH \reg_in_reg<4><2>  ( .CLK(N97), .D(\writedata<2> ), .Q(\reg_in<4><2> )
         );
  LATCH \reg_in_reg<4><1>  ( .CLK(N97), .D(\writedata<1> ), .Q(\reg_in<4><1> )
         );
  LATCH \reg_in_reg<4><0>  ( .CLK(N97), .D(\writedata<0> ), .Q(\reg_in<4><0> )
         );
  LATCH \reg_in_reg<3><15>  ( .CLK(N96), .D(\writedata<15> ), .Q(
        \reg_in<3><15> ) );
  LATCH \reg_in_reg<3><14>  ( .CLK(N96), .D(\writedata<14> ), .Q(
        \reg_in<3><14> ) );
  LATCH \reg_in_reg<3><13>  ( .CLK(N96), .D(\writedata<13> ), .Q(
        \reg_in<3><13> ) );
  LATCH \reg_in_reg<3><12>  ( .CLK(N96), .D(\writedata<12> ), .Q(
        \reg_in<3><12> ) );
  LATCH \reg_in_reg<3><11>  ( .CLK(N96), .D(\writedata<11> ), .Q(
        \reg_in<3><11> ) );
  LATCH \reg_in_reg<3><10>  ( .CLK(N96), .D(\writedata<10> ), .Q(
        \reg_in<3><10> ) );
  LATCH \reg_in_reg<3><9>  ( .CLK(N96), .D(\writedata<9> ), .Q(\reg_in<3><9> )
         );
  LATCH \reg_in_reg<3><8>  ( .CLK(N96), .D(\writedata<8> ), .Q(\reg_in<3><8> )
         );
  LATCH \reg_in_reg<3><7>  ( .CLK(N96), .D(\writedata<7> ), .Q(\reg_in<3><7> )
         );
  LATCH \reg_in_reg<3><6>  ( .CLK(N96), .D(\writedata<6> ), .Q(\reg_in<3><6> )
         );
  LATCH \reg_in_reg<3><5>  ( .CLK(N96), .D(\writedata<5> ), .Q(\reg_in<3><5> )
         );
  LATCH \reg_in_reg<3><4>  ( .CLK(N96), .D(\writedata<4> ), .Q(\reg_in<3><4> )
         );
  LATCH \reg_in_reg<3><3>  ( .CLK(N96), .D(\writedata<3> ), .Q(\reg_in<3><3> )
         );
  LATCH \reg_in_reg<3><2>  ( .CLK(N96), .D(\writedata<2> ), .Q(\reg_in<3><2> )
         );
  LATCH \reg_in_reg<3><1>  ( .CLK(N96), .D(\writedata<1> ), .Q(\reg_in<3><1> )
         );
  LATCH \reg_in_reg<3><0>  ( .CLK(N96), .D(\writedata<0> ), .Q(\reg_in<3><0> )
         );
  LATCH \reg_in_reg<2><15>  ( .CLK(N95), .D(\writedata<15> ), .Q(
        \reg_in<2><15> ) );
  LATCH \reg_in_reg<2><14>  ( .CLK(N95), .D(\writedata<14> ), .Q(
        \reg_in<2><14> ) );
  LATCH \reg_in_reg<2><13>  ( .CLK(N95), .D(\writedata<13> ), .Q(
        \reg_in<2><13> ) );
  LATCH \reg_in_reg<2><12>  ( .CLK(N95), .D(\writedata<12> ), .Q(
        \reg_in<2><12> ) );
  LATCH \reg_in_reg<2><11>  ( .CLK(N95), .D(\writedata<11> ), .Q(
        \reg_in<2><11> ) );
  LATCH \reg_in_reg<2><10>  ( .CLK(N95), .D(\writedata<10> ), .Q(
        \reg_in<2><10> ) );
  LATCH \reg_in_reg<2><9>  ( .CLK(N95), .D(\writedata<9> ), .Q(\reg_in<2><9> )
         );
  LATCH \reg_in_reg<2><8>  ( .CLK(N95), .D(\writedata<8> ), .Q(\reg_in<2><8> )
         );
  LATCH \reg_in_reg<2><7>  ( .CLK(N95), .D(\writedata<7> ), .Q(\reg_in<2><7> )
         );
  LATCH \reg_in_reg<2><6>  ( .CLK(N95), .D(\writedata<6> ), .Q(\reg_in<2><6> )
         );
  LATCH \reg_in_reg<2><5>  ( .CLK(N95), .D(\writedata<5> ), .Q(\reg_in<2><5> )
         );
  LATCH \reg_in_reg<2><4>  ( .CLK(N95), .D(\writedata<4> ), .Q(\reg_in<2><4> )
         );
  LATCH \reg_in_reg<2><3>  ( .CLK(N95), .D(\writedata<3> ), .Q(\reg_in<2><3> )
         );
  LATCH \reg_in_reg<2><2>  ( .CLK(N95), .D(\writedata<2> ), .Q(\reg_in<2><2> )
         );
  LATCH \reg_in_reg<2><1>  ( .CLK(N95), .D(\writedata<1> ), .Q(\reg_in<2><1> )
         );
  LATCH \reg_in_reg<2><0>  ( .CLK(N95), .D(\writedata<0> ), .Q(\reg_in<2><0> )
         );
  LATCH \reg_in_reg<1><15>  ( .CLK(N94), .D(\writedata<15> ), .Q(
        \reg_in<1><15> ) );
  LATCH \reg_in_reg<1><14>  ( .CLK(N94), .D(\writedata<14> ), .Q(
        \reg_in<1><14> ) );
  LATCH \reg_in_reg<1><13>  ( .CLK(N94), .D(\writedata<13> ), .Q(
        \reg_in<1><13> ) );
  LATCH \reg_in_reg<1><12>  ( .CLK(N94), .D(\writedata<12> ), .Q(
        \reg_in<1><12> ) );
  LATCH \reg_in_reg<1><11>  ( .CLK(N94), .D(\writedata<11> ), .Q(
        \reg_in<1><11> ) );
  LATCH \reg_in_reg<1><10>  ( .CLK(N94), .D(\writedata<10> ), .Q(
        \reg_in<1><10> ) );
  LATCH \reg_in_reg<1><9>  ( .CLK(N94), .D(\writedata<9> ), .Q(\reg_in<1><9> )
         );
  LATCH \reg_in_reg<1><8>  ( .CLK(N94), .D(\writedata<8> ), .Q(\reg_in<1><8> )
         );
  LATCH \reg_in_reg<1><7>  ( .CLK(N94), .D(\writedata<7> ), .Q(\reg_in<1><7> )
         );
  LATCH \reg_in_reg<1><6>  ( .CLK(N94), .D(\writedata<6> ), .Q(\reg_in<1><6> )
         );
  LATCH \reg_in_reg<1><5>  ( .CLK(N94), .D(\writedata<5> ), .Q(\reg_in<1><5> )
         );
  LATCH \reg_in_reg<1><4>  ( .CLK(N94), .D(\writedata<4> ), .Q(\reg_in<1><4> )
         );
  LATCH \reg_in_reg<1><3>  ( .CLK(N94), .D(\writedata<3> ), .Q(\reg_in<1><3> )
         );
  LATCH \reg_in_reg<1><2>  ( .CLK(N94), .D(\writedata<2> ), .Q(\reg_in<1><2> )
         );
  LATCH \reg_in_reg<1><1>  ( .CLK(N94), .D(\writedata<1> ), .Q(\reg_in<1><1> )
         );
  LATCH \reg_in_reg<1><0>  ( .CLK(N94), .D(\writedata<0> ), .Q(\reg_in<1><0> )
         );
  LATCH \reg_in_reg<0><15>  ( .CLK(N93), .D(\writedata<15> ), .Q(
        \reg_in<0><15> ) );
  LATCH \reg_in_reg<0><14>  ( .CLK(N93), .D(\writedata<14> ), .Q(
        \reg_in<0><14> ) );
  LATCH \reg_in_reg<0><13>  ( .CLK(N93), .D(\writedata<13> ), .Q(
        \reg_in<0><13> ) );
  LATCH \reg_in_reg<0><12>  ( .CLK(N93), .D(\writedata<12> ), .Q(
        \reg_in<0><12> ) );
  LATCH \reg_in_reg<0><11>  ( .CLK(N93), .D(\writedata<11> ), .Q(
        \reg_in<0><11> ) );
  LATCH \reg_in_reg<0><10>  ( .CLK(N93), .D(\writedata<10> ), .Q(
        \reg_in<0><10> ) );
  LATCH \reg_in_reg<0><9>  ( .CLK(N93), .D(\writedata<9> ), .Q(\reg_in<0><9> )
         );
  LATCH \reg_in_reg<0><8>  ( .CLK(N93), .D(\writedata<8> ), .Q(\reg_in<0><8> )
         );
  LATCH \reg_in_reg<0><7>  ( .CLK(N93), .D(\writedata<7> ), .Q(\reg_in<0><7> )
         );
  LATCH \reg_in_reg<0><6>  ( .CLK(N93), .D(\writedata<6> ), .Q(\reg_in<0><6> )
         );
  LATCH \reg_in_reg<0><5>  ( .CLK(N93), .D(\writedata<5> ), .Q(\reg_in<0><5> )
         );
  LATCH \reg_in_reg<0><4>  ( .CLK(N93), .D(\writedata<4> ), .Q(\reg_in<0><4> )
         );
  LATCH \reg_in_reg<0><3>  ( .CLK(N93), .D(\writedata<3> ), .Q(\reg_in<0><3> )
         );
  LATCH \reg_in_reg<0><2>  ( .CLK(N93), .D(\writedata<2> ), .Q(\reg_in<0><2> )
         );
  LATCH \reg_in_reg<0><1>  ( .CLK(N93), .D(\writedata<1> ), .Q(\reg_in<0><1> )
         );
  LATCH \reg_in_reg<0><0>  ( .CLK(N93), .D(\writedata<0> ), .Q(\reg_in<0><0> )
         );
  NOR3X1 U57 ( .A(n365), .B(n14), .C(n13), .Y(\wr<7> ) );
  NAND3X1 U59 ( .A(n332), .B(n364), .C(n19), .Y(n398) );
  AOI22X1 U60 ( .A(\reg_out<7><9> ), .B(n8), .C(\reg_out<6><9> ), .D(n7), .Y(
        n21) );
  AOI22X1 U61 ( .A(\reg_out<5><9> ), .B(n10), .C(\reg_out<4><9> ), .D(n9), .Y(
        n20) );
  AOI22X1 U62 ( .A(\reg_out<3><9> ), .B(n372), .C(\reg_out<2><9> ), .D(n373), 
        .Y(n18) );
  AOI22X1 U63 ( .A(\reg_out<1><9> ), .B(n370), .C(\reg_out<0><9> ), .D(n371), 
        .Y(n17) );
  NAND3X1 U64 ( .A(n331), .B(n363), .C(n28), .Y(n399) );
  AOI22X1 U65 ( .A(\reg_out<7><8> ), .B(n8), .C(\reg_out<6><8> ), .D(n7), .Y(
        n30) );
  AOI22X1 U66 ( .A(\reg_out<5><8> ), .B(n10), .C(\reg_out<4><8> ), .D(n9), .Y(
        n29) );
  AOI22X1 U67 ( .A(\reg_out<3><8> ), .B(n372), .C(\reg_out<2><8> ), .D(n373), 
        .Y(n27) );
  AOI22X1 U68 ( .A(\reg_out<1><8> ), .B(n370), .C(\reg_out<0><8> ), .D(n371), 
        .Y(n26) );
  NAND3X1 U69 ( .A(n330), .B(n362), .C(n33), .Y(n400) );
  AOI22X1 U70 ( .A(\reg_out<7><7> ), .B(n8), .C(\reg_out<6><7> ), .D(n7), .Y(
        n35) );
  AOI22X1 U71 ( .A(\reg_out<5><7> ), .B(n10), .C(\reg_out<4><7> ), .D(n9), .Y(
        n34) );
  AOI22X1 U72 ( .A(\reg_out<3><7> ), .B(n372), .C(\reg_out<2><7> ), .D(n373), 
        .Y(n32) );
  AOI22X1 U73 ( .A(\reg_out<1><7> ), .B(n370), .C(\reg_out<0><7> ), .D(n371), 
        .Y(n31) );
  NAND3X1 U74 ( .A(n329), .B(n361), .C(n38), .Y(n401) );
  AOI22X1 U75 ( .A(\reg_out<7><6> ), .B(n8), .C(\reg_out<6><6> ), .D(n7), .Y(
        n40) );
  AOI22X1 U76 ( .A(\reg_out<5><6> ), .B(n10), .C(\reg_out<4><6> ), .D(n9), .Y(
        n39) );
  AOI22X1 U77 ( .A(\reg_out<3><6> ), .B(n372), .C(\reg_out<2><6> ), .D(n373), 
        .Y(n37) );
  AOI22X1 U78 ( .A(\reg_out<1><6> ), .B(n370), .C(\reg_out<0><6> ), .D(n371), 
        .Y(n36) );
  NAND3X1 U79 ( .A(n328), .B(n360), .C(n43), .Y(n402) );
  AOI22X1 U80 ( .A(\reg_out<7><5> ), .B(n8), .C(\reg_out<6><5> ), .D(n7), .Y(
        n45) );
  AOI22X1 U81 ( .A(\reg_out<5><5> ), .B(n10), .C(\reg_out<4><5> ), .D(n9), .Y(
        n44) );
  AOI22X1 U82 ( .A(\reg_out<3><5> ), .B(n372), .C(\reg_out<2><5> ), .D(n373), 
        .Y(n42) );
  AOI22X1 U83 ( .A(\reg_out<1><5> ), .B(n370), .C(\reg_out<0><5> ), .D(n371), 
        .Y(n41) );
  NAND3X1 U84 ( .A(n327), .B(n359), .C(n48), .Y(n403) );
  AOI22X1 U85 ( .A(\reg_out<7><4> ), .B(n8), .C(\reg_out<6><4> ), .D(n7), .Y(
        n50) );
  AOI22X1 U86 ( .A(\reg_out<5><4> ), .B(n10), .C(\reg_out<4><4> ), .D(n9), .Y(
        n49) );
  AOI22X1 U87 ( .A(\reg_out<3><4> ), .B(n372), .C(\reg_out<2><4> ), .D(n373), 
        .Y(n47) );
  AOI22X1 U88 ( .A(\reg_out<1><4> ), .B(n370), .C(\reg_out<0><4> ), .D(n371), 
        .Y(n46) );
  NAND3X1 U89 ( .A(n326), .B(n358), .C(n53), .Y(n404) );
  AOI22X1 U90 ( .A(\reg_out<7><3> ), .B(n8), .C(\reg_out<6><3> ), .D(n7), .Y(
        n55) );
  AOI22X1 U91 ( .A(\reg_out<5><3> ), .B(n10), .C(\reg_out<4><3> ), .D(n9), .Y(
        n54) );
  AOI22X1 U92 ( .A(\reg_out<3><3> ), .B(n372), .C(\reg_out<2><3> ), .D(n373), 
        .Y(n52) );
  AOI22X1 U93 ( .A(\reg_out<1><3> ), .B(n370), .C(\reg_out<0><3> ), .D(n371), 
        .Y(n51) );
  NAND3X1 U94 ( .A(n325), .B(n357), .C(n58), .Y(n405) );
  AOI22X1 U95 ( .A(\reg_out<7><2> ), .B(n8), .C(\reg_out<6><2> ), .D(n7), .Y(
        n60) );
  AOI22X1 U96 ( .A(\reg_out<5><2> ), .B(n10), .C(\reg_out<4><2> ), .D(n9), .Y(
        n59) );
  AOI22X1 U97 ( .A(\reg_out<3><2> ), .B(n372), .C(\reg_out<2><2> ), .D(n373), 
        .Y(n57) );
  AOI22X1 U98 ( .A(\reg_out<1><2> ), .B(n370), .C(\reg_out<0><2> ), .D(n371), 
        .Y(n56) );
  NAND3X1 U99 ( .A(n324), .B(n356), .C(n63), .Y(n406) );
  AOI22X1 U100 ( .A(\reg_out<7><1> ), .B(n8), .C(\reg_out<6><1> ), .D(n7), .Y(
        n65) );
  AOI22X1 U101 ( .A(\reg_out<5><1> ), .B(n10), .C(\reg_out<4><1> ), .D(n9), 
        .Y(n64) );
  AOI22X1 U102 ( .A(\reg_out<3><1> ), .B(n372), .C(\reg_out<2><1> ), .D(n373), 
        .Y(n62) );
  AOI22X1 U103 ( .A(\reg_out<1><1> ), .B(n370), .C(\reg_out<0><1> ), .D(n371), 
        .Y(n61) );
  NAND3X1 U104 ( .A(n323), .B(n355), .C(n68), .Y(n392) );
  AOI22X1 U105 ( .A(\reg_out<7><15> ), .B(n8), .C(\reg_out<6><15> ), .D(n7), 
        .Y(n70) );
  AOI22X1 U106 ( .A(\reg_out<5><15> ), .B(n10), .C(\reg_out<4><15> ), .D(n9), 
        .Y(n69) );
  AOI22X1 U107 ( .A(\reg_out<3><15> ), .B(n372), .C(\reg_out<2><15> ), .D(n373), .Y(n67) );
  AOI22X1 U108 ( .A(\reg_out<1><15> ), .B(n370), .C(\reg_out<0><15> ), .D(n371), .Y(n66) );
  NAND3X1 U109 ( .A(n322), .B(n354), .C(n73), .Y(n393) );
  AOI22X1 U110 ( .A(\reg_out<7><14> ), .B(n8), .C(\reg_out<6><14> ), .D(n7), 
        .Y(n75) );
  AOI22X1 U111 ( .A(\reg_out<5><14> ), .B(n10), .C(\reg_out<4><14> ), .D(n9), 
        .Y(n74) );
  AOI22X1 U112 ( .A(\reg_out<3><14> ), .B(n372), .C(\reg_out<2><14> ), .D(n373), .Y(n72) );
  AOI22X1 U113 ( .A(\reg_out<1><14> ), .B(n370), .C(\reg_out<0><14> ), .D(n371), .Y(n71) );
  NAND3X1 U114 ( .A(n321), .B(n353), .C(n78), .Y(n394) );
  AOI22X1 U115 ( .A(\reg_out<7><13> ), .B(n8), .C(\reg_out<6><13> ), .D(n7), 
        .Y(n80) );
  AOI22X1 U116 ( .A(\reg_out<5><13> ), .B(n10), .C(\reg_out<4><13> ), .D(n9), 
        .Y(n79) );
  AOI22X1 U117 ( .A(\reg_out<3><13> ), .B(n372), .C(\reg_out<2><13> ), .D(n373), .Y(n77) );
  AOI22X1 U118 ( .A(\reg_out<1><13> ), .B(n370), .C(\reg_out<0><13> ), .D(n371), .Y(n76) );
  NAND3X1 U119 ( .A(n320), .B(n352), .C(n83), .Y(n395) );
  AOI22X1 U120 ( .A(\reg_out<7><12> ), .B(n8), .C(\reg_out<6><12> ), .D(n7), 
        .Y(n85) );
  AOI22X1 U121 ( .A(\reg_out<5><12> ), .B(n10), .C(\reg_out<4><12> ), .D(n9), 
        .Y(n84) );
  AOI22X1 U122 ( .A(\reg_out<3><12> ), .B(n372), .C(\reg_out<2><12> ), .D(n373), .Y(n82) );
  AOI22X1 U123 ( .A(\reg_out<1><12> ), .B(n370), .C(\reg_out<0><12> ), .D(n371), .Y(n81) );
  NAND3X1 U124 ( .A(n319), .B(n351), .C(n88), .Y(n396) );
  AOI22X1 U125 ( .A(\reg_out<7><11> ), .B(n8), .C(\reg_out<6><11> ), .D(n7), 
        .Y(n90) );
  AOI22X1 U126 ( .A(\reg_out<5><11> ), .B(n10), .C(\reg_out<4><11> ), .D(n9), 
        .Y(n89) );
  AOI22X1 U127 ( .A(\reg_out<3><11> ), .B(n372), .C(\reg_out<2><11> ), .D(n373), .Y(n87) );
  AOI22X1 U128 ( .A(\reg_out<1><11> ), .B(n370), .C(\reg_out<0><11> ), .D(n371), .Y(n86) );
  NAND3X1 U129 ( .A(n318), .B(n350), .C(n93), .Y(n397) );
  AOI22X1 U130 ( .A(\reg_out<7><10> ), .B(n8), .C(\reg_out<6><10> ), .D(n7), 
        .Y(n95) );
  AOI22X1 U131 ( .A(\reg_out<5><10> ), .B(n10), .C(\reg_out<4><10> ), .D(n9), 
        .Y(n94) );
  AOI22X1 U132 ( .A(\reg_out<3><10> ), .B(n372), .C(\reg_out<2><10> ), .D(n373), .Y(n92) );
  AOI22X1 U133 ( .A(\reg_out<1><10> ), .B(n370), .C(\reg_out<0><10> ), .D(n371), .Y(n91) );
  NAND3X1 U134 ( .A(n317), .B(n349), .C(n98), .Y(n407) );
  AOI22X1 U135 ( .A(\reg_out<7><0> ), .B(n8), .C(\reg_out<6><0> ), .D(n7), .Y(
        n100) );
  NAND3X1 U136 ( .A(\read2regsel<1> ), .B(n12), .C(\read2regsel<2> ), .Y(n101)
         );
  NAND3X1 U137 ( .A(\read2regsel<1> ), .B(\read2regsel<0> ), .C(
        \read2regsel<2> ), .Y(n102) );
  AOI22X1 U138 ( .A(\reg_out<5><0> ), .B(n10), .C(\reg_out<4><0> ), .D(n9), 
        .Y(n99) );
  NAND3X1 U139 ( .A(n12), .B(n11), .C(\read2regsel<2> ), .Y(n103) );
  NAND3X1 U140 ( .A(\read2regsel<0> ), .B(n11), .C(\read2regsel<2> ), .Y(n104)
         );
  AOI22X1 U141 ( .A(\reg_out<3><0> ), .B(n372), .C(\reg_out<2><0> ), .D(n373), 
        .Y(n97) );
  NOR3X1 U142 ( .A(\read2regsel<0> ), .B(\read2regsel<2> ), .C(n11), .Y(n23)
         );
  NOR3X1 U143 ( .A(n12), .B(\read2regsel<2> ), .C(n11), .Y(n22) );
  AOI22X1 U144 ( .A(\reg_out<1><0> ), .B(n370), .C(\reg_out<0><0> ), .D(n371), 
        .Y(n96) );
  NOR3X1 U145 ( .A(\read2regsel<1> ), .B(\read2regsel<2> ), .C(
        \read2regsel<0> ), .Y(n25) );
  NOR3X1 U146 ( .A(\read2regsel<1> ), .B(\read2regsel<2> ), .C(n12), .Y(n24)
         );
  NAND3X1 U147 ( .A(n316), .B(n348), .C(n107), .Y(n382) );
  AOI22X1 U148 ( .A(n2), .B(\reg_out<7><9> ), .C(n1), .D(\reg_out<6><9> ), .Y(
        n109) );
  AOI22X1 U149 ( .A(n4), .B(\reg_out<5><9> ), .C(n3), .D(\reg_out<4><9> ), .Y(
        n108) );
  AOI22X1 U150 ( .A(n368), .B(\reg_out<3><9> ), .C(n369), .D(\reg_out<2><9> ), 
        .Y(n106) );
  AOI22X1 U151 ( .A(n366), .B(\reg_out<1><9> ), .C(n367), .D(\reg_out<0><9> ), 
        .Y(n105) );
  NAND3X1 U152 ( .A(n315), .B(n347), .C(n116), .Y(n383) );
  AOI22X1 U153 ( .A(n2), .B(\reg_out<7><8> ), .C(n1), .D(\reg_out<6><8> ), .Y(
        n118) );
  AOI22X1 U154 ( .A(n4), .B(\reg_out<5><8> ), .C(n3), .D(\reg_out<4><8> ), .Y(
        n117) );
  AOI22X1 U155 ( .A(n368), .B(\reg_out<3><8> ), .C(n369), .D(\reg_out<2><8> ), 
        .Y(n115) );
  AOI22X1 U156 ( .A(n366), .B(\reg_out<1><8> ), .C(n367), .D(\reg_out<0><8> ), 
        .Y(n114) );
  NAND3X1 U157 ( .A(n314), .B(n346), .C(n121), .Y(n384) );
  AOI22X1 U158 ( .A(n2), .B(\reg_out<7><7> ), .C(n1), .D(\reg_out<6><7> ), .Y(
        n123) );
  AOI22X1 U159 ( .A(n4), .B(\reg_out<5><7> ), .C(n3), .D(\reg_out<4><7> ), .Y(
        n122) );
  AOI22X1 U160 ( .A(n368), .B(\reg_out<3><7> ), .C(n369), .D(\reg_out<2><7> ), 
        .Y(n120) );
  AOI22X1 U161 ( .A(n366), .B(\reg_out<1><7> ), .C(n367), .D(\reg_out<0><7> ), 
        .Y(n119) );
  NAND3X1 U162 ( .A(n313), .B(n345), .C(n126), .Y(n385) );
  AOI22X1 U163 ( .A(n2), .B(\reg_out<7><6> ), .C(n1), .D(\reg_out<6><6> ), .Y(
        n128) );
  AOI22X1 U164 ( .A(n4), .B(\reg_out<5><6> ), .C(n3), .D(\reg_out<4><6> ), .Y(
        n127) );
  AOI22X1 U165 ( .A(n368), .B(\reg_out<3><6> ), .C(n369), .D(\reg_out<2><6> ), 
        .Y(n125) );
  AOI22X1 U166 ( .A(n366), .B(\reg_out<1><6> ), .C(n367), .D(\reg_out<0><6> ), 
        .Y(n124) );
  NAND3X1 U167 ( .A(n312), .B(n344), .C(n131), .Y(n386) );
  AOI22X1 U168 ( .A(n2), .B(\reg_out<7><5> ), .C(n1), .D(\reg_out<6><5> ), .Y(
        n133) );
  AOI22X1 U169 ( .A(n4), .B(\reg_out<5><5> ), .C(n3), .D(\reg_out<4><5> ), .Y(
        n132) );
  AOI22X1 U170 ( .A(n368), .B(\reg_out<3><5> ), .C(n369), .D(\reg_out<2><5> ), 
        .Y(n130) );
  AOI22X1 U171 ( .A(n366), .B(\reg_out<1><5> ), .C(n367), .D(\reg_out<0><5> ), 
        .Y(n129) );
  NAND3X1 U172 ( .A(n311), .B(n343), .C(n136), .Y(n387) );
  AOI22X1 U173 ( .A(n2), .B(\reg_out<7><4> ), .C(n1), .D(\reg_out<6><4> ), .Y(
        n138) );
  AOI22X1 U174 ( .A(n4), .B(\reg_out<5><4> ), .C(n3), .D(\reg_out<4><4> ), .Y(
        n137) );
  AOI22X1 U175 ( .A(n368), .B(\reg_out<3><4> ), .C(n369), .D(\reg_out<2><4> ), 
        .Y(n135) );
  AOI22X1 U176 ( .A(n366), .B(\reg_out<1><4> ), .C(n367), .D(\reg_out<0><4> ), 
        .Y(n134) );
  NAND3X1 U177 ( .A(n310), .B(n342), .C(n141), .Y(n388) );
  AOI22X1 U178 ( .A(n2), .B(\reg_out<7><3> ), .C(n1), .D(\reg_out<6><3> ), .Y(
        n143) );
  AOI22X1 U179 ( .A(n4), .B(\reg_out<5><3> ), .C(n3), .D(\reg_out<4><3> ), .Y(
        n142) );
  AOI22X1 U180 ( .A(n368), .B(\reg_out<3><3> ), .C(n369), .D(\reg_out<2><3> ), 
        .Y(n140) );
  AOI22X1 U181 ( .A(n366), .B(\reg_out<1><3> ), .C(n367), .D(\reg_out<0><3> ), 
        .Y(n139) );
  NAND3X1 U182 ( .A(n309), .B(n341), .C(n146), .Y(n389) );
  AOI22X1 U183 ( .A(n2), .B(\reg_out<7><2> ), .C(n1), .D(\reg_out<6><2> ), .Y(
        n148) );
  AOI22X1 U184 ( .A(n4), .B(\reg_out<5><2> ), .C(n3), .D(\reg_out<4><2> ), .Y(
        n147) );
  AOI22X1 U185 ( .A(n368), .B(\reg_out<3><2> ), .C(n369), .D(\reg_out<2><2> ), 
        .Y(n145) );
  AOI22X1 U186 ( .A(n366), .B(\reg_out<1><2> ), .C(n367), .D(\reg_out<0><2> ), 
        .Y(n144) );
  NAND3X1 U187 ( .A(n308), .B(n340), .C(n151), .Y(n390) );
  AOI22X1 U188 ( .A(n2), .B(\reg_out<7><1> ), .C(n1), .D(\reg_out<6><1> ), .Y(
        n153) );
  AOI22X1 U189 ( .A(n4), .B(\reg_out<5><1> ), .C(n3), .D(\reg_out<4><1> ), .Y(
        n152) );
  AOI22X1 U190 ( .A(n368), .B(\reg_out<3><1> ), .C(n369), .D(\reg_out<2><1> ), 
        .Y(n150) );
  AOI22X1 U191 ( .A(n366), .B(\reg_out<1><1> ), .C(n367), .D(\reg_out<0><1> ), 
        .Y(n149) );
  NAND3X1 U192 ( .A(n307), .B(n339), .C(n156), .Y(n376) );
  AOI22X1 U193 ( .A(n2), .B(\reg_out<7><15> ), .C(n1), .D(\reg_out<6><15> ), 
        .Y(n158) );
  AOI22X1 U194 ( .A(n4), .B(\reg_out<5><15> ), .C(n3), .D(\reg_out<4><15> ), 
        .Y(n157) );
  AOI22X1 U195 ( .A(n368), .B(\reg_out<3><15> ), .C(n369), .D(\reg_out<2><15> ), .Y(n155) );
  AOI22X1 U196 ( .A(n366), .B(\reg_out<1><15> ), .C(n367), .D(\reg_out<0><15> ), .Y(n154) );
  NAND3X1 U197 ( .A(n306), .B(n338), .C(n161), .Y(n377) );
  AOI22X1 U198 ( .A(n2), .B(\reg_out<7><14> ), .C(n1), .D(\reg_out<6><14> ), 
        .Y(n163) );
  AOI22X1 U199 ( .A(n4), .B(\reg_out<5><14> ), .C(n3), .D(\reg_out<4><14> ), 
        .Y(n162) );
  AOI22X1 U200 ( .A(n368), .B(\reg_out<3><14> ), .C(n369), .D(\reg_out<2><14> ), .Y(n160) );
  AOI22X1 U201 ( .A(n366), .B(\reg_out<1><14> ), .C(n367), .D(\reg_out<0><14> ), .Y(n159) );
  NAND3X1 U202 ( .A(n305), .B(n337), .C(n166), .Y(n378) );
  AOI22X1 U203 ( .A(n2), .B(\reg_out<7><13> ), .C(n1), .D(\reg_out<6><13> ), 
        .Y(n168) );
  AOI22X1 U204 ( .A(n4), .B(\reg_out<5><13> ), .C(n3), .D(\reg_out<4><13> ), 
        .Y(n167) );
  AOI22X1 U205 ( .A(n368), .B(\reg_out<3><13> ), .C(n369), .D(\reg_out<2><13> ), .Y(n165) );
  AOI22X1 U206 ( .A(n366), .B(\reg_out<1><13> ), .C(n367), .D(\reg_out<0><13> ), .Y(n164) );
  NAND3X1 U207 ( .A(n304), .B(n336), .C(n171), .Y(n379) );
  AOI22X1 U208 ( .A(n2), .B(\reg_out<7><12> ), .C(n1), .D(\reg_out<6><12> ), 
        .Y(n173) );
  AOI22X1 U209 ( .A(n4), .B(\reg_out<5><12> ), .C(n3), .D(\reg_out<4><12> ), 
        .Y(n172) );
  AOI22X1 U210 ( .A(n368), .B(\reg_out<3><12> ), .C(n369), .D(\reg_out<2><12> ), .Y(n170) );
  AOI22X1 U211 ( .A(n366), .B(\reg_out<1><12> ), .C(n367), .D(\reg_out<0><12> ), .Y(n169) );
  NAND3X1 U212 ( .A(n303), .B(n335), .C(n176), .Y(n380) );
  AOI22X1 U213 ( .A(n2), .B(\reg_out<7><11> ), .C(n1), .D(\reg_out<6><11> ), 
        .Y(n178) );
  AOI22X1 U214 ( .A(n4), .B(\reg_out<5><11> ), .C(n3), .D(\reg_out<4><11> ), 
        .Y(n177) );
  AOI22X1 U215 ( .A(n368), .B(\reg_out<3><11> ), .C(n369), .D(\reg_out<2><11> ), .Y(n175) );
  AOI22X1 U216 ( .A(n366), .B(\reg_out<1><11> ), .C(n367), .D(\reg_out<0><11> ), .Y(n174) );
  NAND3X1 U217 ( .A(n302), .B(n334), .C(n181), .Y(n381) );
  AOI22X1 U218 ( .A(n2), .B(\reg_out<7><10> ), .C(n1), .D(\reg_out<6><10> ), 
        .Y(n183) );
  AOI22X1 U219 ( .A(n4), .B(\reg_out<5><10> ), .C(n3), .D(\reg_out<4><10> ), 
        .Y(n182) );
  AOI22X1 U220 ( .A(n368), .B(\reg_out<3><10> ), .C(n369), .D(\reg_out<2><10> ), .Y(n180) );
  AOI22X1 U221 ( .A(n366), .B(\reg_out<1><10> ), .C(n367), .D(\reg_out<0><10> ), .Y(n179) );
  NAND3X1 U222 ( .A(n301), .B(n333), .C(n186), .Y(n391) );
  AOI22X1 U223 ( .A(n2), .B(\reg_out<7><0> ), .C(n1), .D(\reg_out<6><0> ), .Y(
        n188) );
  NAND3X1 U224 ( .A(\read1regsel<1> ), .B(n6), .C(\read1regsel<2> ), .Y(n189)
         );
  NAND3X1 U225 ( .A(\read1regsel<1> ), .B(\read1regsel<0> ), .C(
        \read1regsel<2> ), .Y(n190) );
  AOI22X1 U226 ( .A(n4), .B(\reg_out<5><0> ), .C(n3), .D(\reg_out<4><0> ), .Y(
        n187) );
  NAND3X1 U227 ( .A(n6), .B(n5), .C(\read1regsel<2> ), .Y(n191) );
  NAND3X1 U228 ( .A(\read1regsel<0> ), .B(n5), .C(\read1regsel<2> ), .Y(n192)
         );
  AOI22X1 U229 ( .A(n368), .B(\reg_out<3><0> ), .C(n369), .D(\reg_out<2><0> ), 
        .Y(n185) );
  NOR3X1 U230 ( .A(\read1regsel<0> ), .B(\read1regsel<2> ), .C(n5), .Y(n111)
         );
  NOR3X1 U231 ( .A(n6), .B(\read1regsel<2> ), .C(n5), .Y(n110) );
  AOI22X1 U232 ( .A(n366), .B(\reg_out<1><0> ), .C(n367), .D(\reg_out<0><0> ), 
        .Y(n184) );
  NOR3X1 U233 ( .A(\read1regsel<1> ), .B(\read1regsel<2> ), .C(
        \read1regsel<0> ), .Y(n113) );
  NOR3X1 U234 ( .A(\read1regsel<1> ), .B(\read1regsel<2> ), .C(n6), .Y(n112)
         );
  NOR3X1 U235 ( .A(n14), .B(\writeregsel<0> ), .C(n13), .Y(N99) );
  NOR3X1 U236 ( .A(n15), .B(\writeregsel<1> ), .C(n13), .Y(N98) );
  NOR3X1 U237 ( .A(\writeregsel<0> ), .B(\writeregsel<1> ), .C(n13), .Y(N97)
         );
  NOR3X1 U238 ( .A(n15), .B(\writeregsel<2> ), .C(n14), .Y(N96) );
  NOR3X1 U239 ( .A(\writeregsel<0> ), .B(\writeregsel<2> ), .C(n14), .Y(N95)
         );
  NOR3X1 U240 ( .A(\writeregsel<1> ), .B(\writeregsel<2> ), .C(n15), .Y(N94)
         );
  NOR3X1 U241 ( .A(\writeregsel<1> ), .B(\writeregsel<2> ), .C(
        \writeregsel<0> ), .Y(N93) );
  NOR3X1 U242 ( .A(n13), .B(n15), .C(n14), .Y(N100) );
  INVX1 U3 ( .A(n374), .Y(n193) );
  INVX1 U4 ( .A(n193), .Y(n194) );
  INVX1 U5 ( .A(n193), .Y(n195) );
  INVX1 U6 ( .A(n193), .Y(n196) );
  AND2X1 U7 ( .A(n205), .B(n237), .Y(n186) );
  AND2X1 U8 ( .A(n206), .B(n238), .Y(n181) );
  AND2X1 U9 ( .A(n207), .B(n239), .Y(n176) );
  AND2X1 U10 ( .A(n208), .B(n240), .Y(n171) );
  AND2X1 U11 ( .A(n209), .B(n241), .Y(n166) );
  AND2X1 U12 ( .A(n210), .B(n242), .Y(n161) );
  AND2X1 U13 ( .A(n211), .B(n243), .Y(n156) );
  AND2X1 U14 ( .A(n212), .B(n244), .Y(n151) );
  AND2X1 U15 ( .A(n213), .B(n245), .Y(n146) );
  AND2X1 U16 ( .A(n214), .B(n246), .Y(n141) );
  AND2X1 U17 ( .A(n215), .B(n247), .Y(n136) );
  AND2X1 U18 ( .A(n216), .B(n248), .Y(n131) );
  AND2X1 U19 ( .A(n217), .B(n249), .Y(n126) );
  AND2X1 U20 ( .A(n218), .B(n250), .Y(n121) );
  AND2X1 U21 ( .A(n219), .B(n251), .Y(n116) );
  AND2X1 U22 ( .A(n220), .B(n252), .Y(n107) );
  AND2X1 U23 ( .A(n221), .B(n253), .Y(n98) );
  AND2X1 U24 ( .A(n222), .B(n254), .Y(n93) );
  AND2X1 U25 ( .A(n223), .B(n255), .Y(n88) );
  AND2X1 U26 ( .A(n224), .B(n256), .Y(n83) );
  AND2X1 U27 ( .A(n225), .B(n257), .Y(n78) );
  AND2X1 U28 ( .A(n226), .B(n258), .Y(n73) );
  AND2X1 U29 ( .A(n227), .B(n259), .Y(n68) );
  AND2X1 U30 ( .A(n228), .B(n260), .Y(n63) );
  AND2X1 U31 ( .A(n229), .B(n261), .Y(n58) );
  AND2X1 U32 ( .A(n230), .B(n262), .Y(n53) );
  AND2X1 U33 ( .A(n231), .B(n263), .Y(n48) );
  AND2X1 U34 ( .A(n232), .B(n264), .Y(n43) );
  AND2X1 U35 ( .A(n233), .B(n265), .Y(n38) );
  AND2X1 U36 ( .A(n234), .B(n266), .Y(n33) );
  AND2X1 U37 ( .A(n235), .B(n267), .Y(n28) );
  AND2X1 U38 ( .A(n236), .B(n268), .Y(n19) );
  BUFX2 U39 ( .A(n192), .Y(n197) );
  BUFX2 U40 ( .A(n191), .Y(n198) );
  BUFX2 U41 ( .A(n190), .Y(n199) );
  BUFX2 U42 ( .A(n189), .Y(n200) );
  BUFX2 U43 ( .A(n104), .Y(n201) );
  BUFX2 U44 ( .A(n103), .Y(n202) );
  BUFX2 U45 ( .A(n102), .Y(n203) );
  BUFX2 U46 ( .A(n101), .Y(n204) );
  BUFX2 U47 ( .A(n187), .Y(n205) );
  BUFX2 U48 ( .A(n182), .Y(n206) );
  BUFX2 U49 ( .A(n177), .Y(n207) );
  BUFX2 U50 ( .A(n172), .Y(n208) );
  BUFX2 U51 ( .A(n167), .Y(n209) );
  BUFX2 U52 ( .A(n162), .Y(n210) );
  BUFX2 U53 ( .A(n157), .Y(n211) );
  BUFX2 U54 ( .A(n152), .Y(n212) );
  BUFX2 U55 ( .A(n147), .Y(n213) );
  BUFX2 U56 ( .A(n142), .Y(n214) );
  BUFX2 U58 ( .A(n137), .Y(n215) );
  BUFX2 U243 ( .A(n132), .Y(n216) );
  BUFX2 U244 ( .A(n127), .Y(n217) );
  BUFX2 U245 ( .A(n122), .Y(n218) );
  BUFX2 U246 ( .A(n117), .Y(n219) );
  BUFX2 U247 ( .A(n108), .Y(n220) );
  BUFX2 U248 ( .A(n99), .Y(n221) );
  BUFX2 U249 ( .A(n94), .Y(n222) );
  BUFX2 U250 ( .A(n89), .Y(n223) );
  BUFX2 U251 ( .A(n84), .Y(n224) );
  BUFX2 U252 ( .A(n79), .Y(n225) );
  BUFX2 U253 ( .A(n74), .Y(n226) );
  BUFX2 U254 ( .A(n69), .Y(n227) );
  BUFX2 U255 ( .A(n64), .Y(n228) );
  BUFX2 U256 ( .A(n59), .Y(n229) );
  BUFX2 U257 ( .A(n54), .Y(n230) );
  BUFX2 U258 ( .A(n49), .Y(n231) );
  BUFX2 U259 ( .A(n44), .Y(n232) );
  BUFX2 U260 ( .A(n39), .Y(n233) );
  BUFX2 U261 ( .A(n34), .Y(n234) );
  BUFX2 U262 ( .A(n29), .Y(n235) );
  BUFX2 U263 ( .A(n20), .Y(n236) );
  BUFX2 U264 ( .A(n188), .Y(n237) );
  BUFX2 U265 ( .A(n183), .Y(n238) );
  BUFX2 U266 ( .A(n178), .Y(n239) );
  BUFX2 U267 ( .A(n173), .Y(n240) );
  BUFX2 U268 ( .A(n168), .Y(n241) );
  BUFX2 U269 ( .A(n163), .Y(n242) );
  BUFX2 U270 ( .A(n158), .Y(n243) );
  BUFX2 U271 ( .A(n153), .Y(n244) );
  BUFX2 U272 ( .A(n148), .Y(n245) );
  BUFX2 U273 ( .A(n143), .Y(n246) );
  BUFX2 U274 ( .A(n138), .Y(n247) );
  BUFX2 U275 ( .A(n133), .Y(n248) );
  BUFX2 U276 ( .A(n128), .Y(n249) );
  BUFX2 U277 ( .A(n123), .Y(n250) );
  BUFX2 U278 ( .A(n118), .Y(n251) );
  BUFX2 U279 ( .A(n109), .Y(n252) );
  BUFX2 U280 ( .A(n100), .Y(n253) );
  BUFX2 U281 ( .A(n95), .Y(n254) );
  BUFX2 U282 ( .A(n90), .Y(n255) );
  BUFX2 U283 ( .A(n85), .Y(n256) );
  BUFX2 U284 ( .A(n80), .Y(n257) );
  BUFX2 U285 ( .A(n75), .Y(n258) );
  BUFX2 U286 ( .A(n70), .Y(n259) );
  BUFX2 U287 ( .A(n65), .Y(n260) );
  BUFX2 U288 ( .A(n60), .Y(n261) );
  BUFX2 U289 ( .A(n55), .Y(n262) );
  BUFX2 U290 ( .A(n50), .Y(n263) );
  BUFX2 U291 ( .A(n45), .Y(n264) );
  BUFX2 U292 ( .A(n40), .Y(n265) );
  BUFX2 U293 ( .A(n35), .Y(n266) );
  BUFX2 U294 ( .A(n30), .Y(n267) );
  BUFX2 U295 ( .A(n21), .Y(n268) );
  BUFX2 U296 ( .A(n391), .Y(\read1data<0> ) );
  BUFX2 U297 ( .A(n381), .Y(\read1data<10> ) );
  BUFX2 U298 ( .A(n380), .Y(\read1data<11> ) );
  BUFX2 U299 ( .A(n379), .Y(\read1data<12> ) );
  BUFX2 U300 ( .A(n378), .Y(\read1data<13> ) );
  BUFX2 U301 ( .A(n377), .Y(\read1data<14> ) );
  BUFX2 U302 ( .A(n376), .Y(\read1data<15> ) );
  BUFX2 U303 ( .A(n390), .Y(\read1data<1> ) );
  BUFX2 U304 ( .A(n389), .Y(\read1data<2> ) );
  BUFX2 U305 ( .A(n388), .Y(\read1data<3> ) );
  BUFX2 U306 ( .A(n387), .Y(\read1data<4> ) );
  BUFX2 U307 ( .A(n386), .Y(\read1data<5> ) );
  BUFX2 U308 ( .A(n385), .Y(\read1data<6> ) );
  BUFX2 U309 ( .A(n384), .Y(\read1data<7> ) );
  BUFX2 U310 ( .A(n383), .Y(\read1data<8> ) );
  BUFX2 U311 ( .A(n382), .Y(\read1data<9> ) );
  BUFX2 U312 ( .A(n407), .Y(\read2data<0> ) );
  BUFX2 U313 ( .A(n397), .Y(\read2data<10> ) );
  BUFX2 U314 ( .A(n396), .Y(\read2data<11> ) );
  BUFX2 U315 ( .A(n395), .Y(\read2data<12> ) );
  BUFX2 U316 ( .A(n394), .Y(\read2data<13> ) );
  BUFX2 U317 ( .A(n393), .Y(\read2data<14> ) );
  BUFX2 U318 ( .A(n392), .Y(\read2data<15> ) );
  BUFX2 U319 ( .A(n406), .Y(\read2data<1> ) );
  BUFX2 U320 ( .A(n405), .Y(\read2data<2> ) );
  BUFX2 U321 ( .A(n404), .Y(\read2data<3> ) );
  BUFX2 U322 ( .A(n403), .Y(\read2data<4> ) );
  BUFX2 U323 ( .A(n402), .Y(\read2data<5> ) );
  BUFX2 U324 ( .A(n401), .Y(\read2data<6> ) );
  BUFX2 U325 ( .A(n400), .Y(\read2data<7> ) );
  BUFX2 U326 ( .A(n399), .Y(\read2data<8> ) );
  BUFX2 U327 ( .A(n398), .Y(\read2data<9> ) );
  BUFX2 U328 ( .A(n184), .Y(n301) );
  BUFX2 U329 ( .A(n179), .Y(n302) );
  BUFX2 U330 ( .A(n174), .Y(n303) );
  BUFX2 U331 ( .A(n169), .Y(n304) );
  BUFX2 U332 ( .A(n164), .Y(n305) );
  BUFX2 U333 ( .A(n159), .Y(n306) );
  BUFX2 U334 ( .A(n154), .Y(n307) );
  BUFX2 U335 ( .A(n149), .Y(n308) );
  BUFX2 U336 ( .A(n144), .Y(n309) );
  BUFX2 U337 ( .A(n139), .Y(n310) );
  BUFX2 U338 ( .A(n134), .Y(n311) );
  BUFX2 U339 ( .A(n129), .Y(n312) );
  BUFX2 U340 ( .A(n124), .Y(n313) );
  BUFX2 U341 ( .A(n119), .Y(n314) );
  BUFX2 U342 ( .A(n114), .Y(n315) );
  BUFX2 U343 ( .A(n105), .Y(n316) );
  BUFX2 U344 ( .A(n96), .Y(n317) );
  BUFX2 U345 ( .A(n91), .Y(n318) );
  BUFX2 U346 ( .A(n86), .Y(n319) );
  BUFX2 U347 ( .A(n81), .Y(n320) );
  BUFX2 U348 ( .A(n76), .Y(n321) );
  BUFX2 U349 ( .A(n71), .Y(n322) );
  BUFX2 U350 ( .A(n66), .Y(n323) );
  BUFX2 U351 ( .A(n61), .Y(n324) );
  BUFX2 U352 ( .A(n56), .Y(n325) );
  BUFX2 U353 ( .A(n51), .Y(n326) );
  BUFX2 U354 ( .A(n46), .Y(n327) );
  BUFX2 U355 ( .A(n41), .Y(n328) );
  BUFX2 U356 ( .A(n36), .Y(n329) );
  BUFX2 U357 ( .A(n31), .Y(n330) );
  BUFX2 U358 ( .A(n26), .Y(n331) );
  BUFX2 U359 ( .A(n17), .Y(n332) );
  BUFX2 U360 ( .A(n185), .Y(n333) );
  BUFX2 U361 ( .A(n180), .Y(n334) );
  BUFX2 U362 ( .A(n175), .Y(n335) );
  BUFX2 U363 ( .A(n170), .Y(n336) );
  BUFX2 U364 ( .A(n165), .Y(n337) );
  BUFX2 U365 ( .A(n160), .Y(n338) );
  BUFX2 U366 ( .A(n155), .Y(n339) );
  BUFX2 U367 ( .A(n150), .Y(n340) );
  BUFX2 U368 ( .A(n145), .Y(n341) );
  BUFX2 U369 ( .A(n140), .Y(n342) );
  BUFX2 U370 ( .A(n135), .Y(n343) );
  BUFX2 U371 ( .A(n130), .Y(n344) );
  BUFX2 U372 ( .A(n125), .Y(n345) );
  BUFX2 U373 ( .A(n120), .Y(n346) );
  BUFX2 U374 ( .A(n115), .Y(n347) );
  BUFX2 U375 ( .A(n106), .Y(n348) );
  BUFX2 U376 ( .A(n97), .Y(n349) );
  BUFX2 U377 ( .A(n92), .Y(n350) );
  BUFX2 U378 ( .A(n87), .Y(n351) );
  BUFX2 U379 ( .A(n82), .Y(n352) );
  BUFX2 U380 ( .A(n77), .Y(n353) );
  BUFX2 U381 ( .A(n72), .Y(n354) );
  BUFX2 U382 ( .A(n67), .Y(n355) );
  BUFX2 U383 ( .A(n62), .Y(n356) );
  BUFX2 U384 ( .A(n57), .Y(n357) );
  BUFX2 U385 ( .A(n52), .Y(n358) );
  BUFX2 U386 ( .A(n47), .Y(n359) );
  BUFX2 U387 ( .A(n42), .Y(n360) );
  BUFX2 U388 ( .A(n37), .Y(n361) );
  BUFX2 U389 ( .A(n32), .Y(n362) );
  BUFX2 U390 ( .A(n27), .Y(n363) );
  BUFX2 U391 ( .A(n18), .Y(n364) );
  AND2X1 U392 ( .A(\writeregsel<0> ), .B(write), .Y(n16) );
  INVX1 U393 ( .A(n16), .Y(n365) );
  INVX1 U394 ( .A(n375), .Y(n374) );
  BUFX2 U395 ( .A(n25), .Y(n371) );
  BUFX2 U396 ( .A(n23), .Y(n373) );
  BUFX2 U397 ( .A(n113), .Y(n367) );
  BUFX2 U398 ( .A(n111), .Y(n369) );
  BUFX2 U399 ( .A(n112), .Y(n366) );
  BUFX2 U400 ( .A(n22), .Y(n372) );
  BUFX2 U401 ( .A(n110), .Y(n368) );
  BUFX2 U402 ( .A(n24), .Y(n370) );
  INVX1 U403 ( .A(n204), .Y(n7) );
  INVX1 U404 ( .A(n202), .Y(n9) );
  INVX1 U405 ( .A(n200), .Y(n1) );
  INVX1 U406 ( .A(n198), .Y(n3) );
  INVX1 U407 ( .A(n199), .Y(n2) );
  INVX1 U408 ( .A(n201), .Y(n10) );
  INVX1 U409 ( .A(n203), .Y(n8) );
  INVX1 U410 ( .A(n197), .Y(n4) );
  INVX1 U411 ( .A(\read2regsel<1> ), .Y(n11) );
  INVX1 U412 ( .A(\read1regsel<1> ), .Y(n5) );
  INVX1 U413 ( .A(\read2regsel<0> ), .Y(n12) );
  INVX1 U414 ( .A(\read1regsel<0> ), .Y(n6) );
  INVX1 U415 ( .A(\writeregsel<2> ), .Y(n13) );
  INVX1 U416 ( .A(\writeregsel<1> ), .Y(n14) );
  INVX1 U417 ( .A(\writeregsel<0> ), .Y(n15) );
  INVX1 U418 ( .A(rst), .Y(n375) );
  AND2X1 U419 ( .A(write), .B(N94), .Y(\wr<1> ) );
  AND2X1 U420 ( .A(write), .B(N95), .Y(\wr<2> ) );
  AND2X1 U421 ( .A(write), .B(N96), .Y(\wr<3> ) );
  AND2X1 U422 ( .A(write), .B(N97), .Y(\wr<4> ) );
  AND2X1 U423 ( .A(write), .B(N98), .Y(\wr<5> ) );
  AND2X1 U424 ( .A(write), .B(N99), .Y(\wr<6> ) );
  AND2X1 U425 ( .A(N93), .B(write), .Y(\wr<0> ) );
endmodule


module rf_bypass ( .read1data({\read1data<15> , \read1data<14> , 
        \read1data<13> , \read1data<12> , \read1data<11> , \read1data<10> , 
        \read1data<9> , \read1data<8> , \read1data<7> , \read1data<6> , 
        \read1data<5> , \read1data<4> , \read1data<3> , \read1data<2> , 
        \read1data<1> , \read1data<0> }), .read2data({\read2data<15> , 
        \read2data<14> , \read2data<13> , \read2data<12> , \read2data<11> , 
        \read2data<10> , \read2data<9> , \read2data<8> , \read2data<7> , 
        \read2data<6> , \read2data<5> , \read2data<4> , \read2data<3> , 
        \read2data<2> , \read2data<1> , \read2data<0> }), err, clk, rst, 
    .read1regsel({\read1regsel<2> , \read1regsel<1> , \read1regsel<0> }), 
    .read2regsel({\read2regsel<2> , \read2regsel<1> , \read2regsel<0> }), 
    .writeregsel({\writeregsel<2> , \writeregsel<1> , \writeregsel<0> }), 
    .writedata({\writedata<15> , \writedata<14> , \writedata<13> , 
        \writedata<12> , \writedata<11> , \writedata<10> , \writedata<9> , 
        \writedata<8> , \writedata<7> , \writedata<6> , \writedata<5> , 
        \writedata<4> , \writedata<3> , \writedata<2> , \writedata<1> , 
        \writedata<0> }), write );
  input clk, rst, \read1regsel<2> , \read1regsel<1> , \read1regsel<0> ,
         \read2regsel<2> , \read2regsel<1> , \read2regsel<0> ,
         \writeregsel<2> , \writeregsel<1> , \writeregsel<0> , \writedata<15> ,
         \writedata<14> , \writedata<13> , \writedata<12> , \writedata<11> ,
         \writedata<10> , \writedata<9> , \writedata<8> , \writedata<7> ,
         \writedata<6> , \writedata<5> , \writedata<4> , \writedata<3> ,
         \writedata<2> , \writedata<1> , \writedata<0> , write;
  output \read1data<15> , \read1data<14> , \read1data<13> , \read1data<12> ,
         \read1data<11> , \read1data<10> , \read1data<9> , \read1data<8> ,
         \read1data<7> , \read1data<6> , \read1data<5> , \read1data<4> ,
         \read1data<3> , \read1data<2> , \read1data<1> , \read1data<0> ,
         \read2data<15> , \read2data<14> , \read2data<13> , \read2data<12> ,
         \read2data<11> , \read2data<10> , \read2data<9> , \read2data<8> ,
         \read2data<7> , \read2data<6> , \read2data<5> , \read2data<4> ,
         \read2data<3> , \read2data<2> , \read2data<1> , \read2data<0> , err;
  wire   n113, \read1<15> , \read1<14> , \read1<13> , \read1<12> , \read1<11> ,
         \read1<10> , \read1<9> , \read1<8> , \read1<7> , \read1<6> ,
         \read1<5> , \read1<4> , \read1<3> , \read1<2> , \read1<1> ,
         \read1<0> , \read2<15> , \read2<14> , \read2<13> , \read2<12> ,
         \read2<11> , \read2<10> , \read2<9> , \read2<8> , \read2<7> ,
         \read2<6> , \read2<5> , \read2<4> , \read2<3> , \read2<2> ,
         \read2<1> , \read2<0> , n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112;
  assign err = 1'b0;

  rf rf0 ( .read1data({\read1<15> , \read1<14> , \read1<13> , \read1<12> , 
        \read1<11> , \read1<10> , \read1<9> , \read1<8> , \read1<7> , 
        \read1<6> , \read1<5> , \read1<4> , \read1<3> , \read1<2> , \read1<1> , 
        \read1<0> }), .read2data({\read2<15> , \read2<14> , \read2<13> , 
        \read2<12> , \read2<11> , \read2<10> , \read2<9> , \read2<8> , 
        \read2<7> , \read2<6> , \read2<5> , \read2<4> , \read2<3> , \read2<2> , 
        \read2<1> , \read2<0> }), .err(n113), .clk(n110), .rst(n111), 
        .read1regsel({n109, n108, n107}), .read2regsel({n106, n105, n104}), 
        .writeregsel({n103, n102, n101}), .writedata({\writedata<15> , 
        \writedata<14> , \writedata<13> , \writedata<12> , \writedata<11> , 
        \writedata<10> , \writedata<9> , \writedata<8> , \writedata<7> , 
        \writedata<6> , \writedata<5> , \writedata<4> , \writedata<3> , 
        \writedata<2> , \writedata<1> , \writedata<0> }), .write(write) );
  OAI21X1 U18 ( .A(n65), .B(n11), .C(n97), .Y(\read2data<9> ) );
  OAI21X1 U20 ( .A(n65), .B(n12), .C(n96), .Y(\read2data<8> ) );
  OAI21X1 U22 ( .A(n65), .B(n13), .C(n95), .Y(\read2data<7> ) );
  OAI21X1 U24 ( .A(n65), .B(n14), .C(n94), .Y(\read2data<6> ) );
  OAI21X1 U26 ( .A(n65), .B(n15), .C(n93), .Y(\read2data<5> ) );
  OAI21X1 U28 ( .A(n65), .B(n16), .C(n92), .Y(\read2data<4> ) );
  OAI21X1 U30 ( .A(n65), .B(n17), .C(n91), .Y(\read2data<3> ) );
  OAI21X1 U32 ( .A(n65), .B(n18), .C(n90), .Y(\read2data<2> ) );
  OAI21X1 U34 ( .A(n65), .B(n19), .C(n89), .Y(\read2data<1> ) );
  OAI21X1 U36 ( .A(n65), .B(n5), .C(n88), .Y(\read2data<15> ) );
  OAI21X1 U38 ( .A(n65), .B(n6), .C(n87), .Y(\read2data<14> ) );
  OAI21X1 U40 ( .A(n65), .B(n7), .C(n86), .Y(\read2data<13> ) );
  OAI21X1 U42 ( .A(n65), .B(n8), .C(n85), .Y(\read2data<12> ) );
  OAI21X1 U44 ( .A(n65), .B(n9), .C(n84), .Y(\read2data<11> ) );
  OAI21X1 U46 ( .A(n65), .B(n10), .C(n83), .Y(\read2data<10> ) );
  OAI21X1 U48 ( .A(n65), .B(n20), .C(n82), .Y(\read2data<0> ) );
  NAND3X1 U50 ( .A(n39), .B(n40), .C(n99), .Y(n22) );
  XOR2X1 U52 ( .A(n103), .B(n106), .Y(n42) );
  XNOR2X1 U53 ( .A(n102), .B(n105), .Y(n40) );
  XNOR2X1 U54 ( .A(n101), .B(n104), .Y(n39) );
  OAI21X1 U55 ( .A(n11), .B(n64), .C(n81), .Y(\read1data<9> ) );
  OAI21X1 U57 ( .A(n12), .B(n64), .C(n80), .Y(\read1data<8> ) );
  OAI21X1 U59 ( .A(n13), .B(n64), .C(n79), .Y(\read1data<7> ) );
  OAI21X1 U61 ( .A(n14), .B(n64), .C(n78), .Y(\read1data<6> ) );
  OAI21X1 U63 ( .A(n15), .B(n64), .C(n77), .Y(\read1data<5> ) );
  OAI21X1 U65 ( .A(n16), .B(n64), .C(n76), .Y(\read1data<4> ) );
  OAI21X1 U67 ( .A(n17), .B(n64), .C(n75), .Y(\read1data<3> ) );
  OAI21X1 U69 ( .A(n18), .B(n64), .C(n74), .Y(\read1data<2> ) );
  OAI21X1 U71 ( .A(n19), .B(n64), .C(n73), .Y(\read1data<1> ) );
  OAI21X1 U73 ( .A(n5), .B(n64), .C(n72), .Y(\read1data<15> ) );
  OAI21X1 U75 ( .A(n6), .B(n64), .C(n71), .Y(\read1data<14> ) );
  OAI21X1 U77 ( .A(n7), .B(n64), .C(n70), .Y(\read1data<13> ) );
  OAI21X1 U79 ( .A(n8), .B(n64), .C(n69), .Y(\read1data<12> ) );
  OAI21X1 U81 ( .A(n9), .B(n64), .C(n68), .Y(\read1data<11> ) );
  OAI21X1 U83 ( .A(n10), .B(n64), .C(n67), .Y(\read1data<10> ) );
  OAI21X1 U85 ( .A(n20), .B(n64), .C(n66), .Y(\read1data<0> ) );
  NAND3X1 U87 ( .A(n60), .B(n61), .C(n98), .Y(n43) );
  XOR2X1 U89 ( .A(n103), .B(n109), .Y(n63) );
  XNOR2X1 U90 ( .A(n102), .B(n108), .Y(n61) );
  XNOR2X1 U91 ( .A(n101), .B(n107), .Y(n60) );
  BUFX2 U92 ( .A(n43), .Y(n64) );
  BUFX2 U93 ( .A(n22), .Y(n65) );
  AND2X1 U94 ( .A(\read1<0> ), .B(n64), .Y(n59) );
  INVX1 U95 ( .A(n59), .Y(n66) );
  AND2X1 U96 ( .A(\read1<10> ), .B(n64), .Y(n58) );
  INVX1 U97 ( .A(n58), .Y(n67) );
  AND2X1 U98 ( .A(\read1<11> ), .B(n64), .Y(n57) );
  INVX1 U99 ( .A(n57), .Y(n68) );
  AND2X1 U100 ( .A(\read1<12> ), .B(n64), .Y(n56) );
  INVX1 U101 ( .A(n56), .Y(n69) );
  AND2X1 U102 ( .A(\read1<13> ), .B(n64), .Y(n55) );
  INVX1 U103 ( .A(n55), .Y(n70) );
  AND2X1 U104 ( .A(\read1<14> ), .B(n64), .Y(n54) );
  INVX1 U105 ( .A(n54), .Y(n71) );
  AND2X1 U106 ( .A(\read1<15> ), .B(n64), .Y(n53) );
  INVX1 U107 ( .A(n53), .Y(n72) );
  AND2X1 U108 ( .A(\read1<1> ), .B(n64), .Y(n52) );
  INVX1 U109 ( .A(n52), .Y(n73) );
  AND2X1 U110 ( .A(\read1<2> ), .B(n64), .Y(n51) );
  INVX1 U111 ( .A(n51), .Y(n74) );
  AND2X1 U112 ( .A(\read1<3> ), .B(n64), .Y(n50) );
  INVX1 U113 ( .A(n50), .Y(n75) );
  AND2X1 U114 ( .A(\read1<4> ), .B(n64), .Y(n49) );
  INVX1 U115 ( .A(n49), .Y(n76) );
  AND2X1 U116 ( .A(\read1<5> ), .B(n64), .Y(n48) );
  INVX1 U117 ( .A(n48), .Y(n77) );
  AND2X1 U118 ( .A(\read1<6> ), .B(n64), .Y(n47) );
  INVX1 U119 ( .A(n47), .Y(n78) );
  AND2X1 U120 ( .A(\read1<7> ), .B(n64), .Y(n46) );
  INVX1 U121 ( .A(n46), .Y(n79) );
  AND2X1 U122 ( .A(\read1<8> ), .B(n64), .Y(n45) );
  INVX1 U123 ( .A(n45), .Y(n80) );
  AND2X1 U124 ( .A(\read1<9> ), .B(n64), .Y(n44) );
  INVX1 U125 ( .A(n44), .Y(n81) );
  AND2X1 U126 ( .A(\read2<0> ), .B(n65), .Y(n38) );
  INVX1 U127 ( .A(n38), .Y(n82) );
  AND2X1 U128 ( .A(\read2<10> ), .B(n65), .Y(n37) );
  INVX1 U129 ( .A(n37), .Y(n83) );
  AND2X1 U130 ( .A(\read2<11> ), .B(n65), .Y(n36) );
  INVX1 U131 ( .A(n36), .Y(n84) );
  AND2X1 U132 ( .A(\read2<12> ), .B(n65), .Y(n35) );
  INVX1 U133 ( .A(n35), .Y(n85) );
  AND2X1 U134 ( .A(\read2<13> ), .B(n65), .Y(n34) );
  INVX1 U135 ( .A(n34), .Y(n86) );
  AND2X1 U136 ( .A(\read2<14> ), .B(n65), .Y(n33) );
  INVX1 U137 ( .A(n33), .Y(n87) );
  AND2X1 U138 ( .A(\read2<15> ), .B(n65), .Y(n32) );
  INVX1 U139 ( .A(n32), .Y(n88) );
  AND2X1 U140 ( .A(\read2<1> ), .B(n65), .Y(n31) );
  INVX1 U141 ( .A(n31), .Y(n89) );
  AND2X1 U142 ( .A(\read2<2> ), .B(n65), .Y(n30) );
  INVX1 U143 ( .A(n30), .Y(n90) );
  AND2X1 U144 ( .A(\read2<3> ), .B(n65), .Y(n29) );
  INVX1 U145 ( .A(n29), .Y(n91) );
  AND2X1 U146 ( .A(\read2<4> ), .B(n65), .Y(n28) );
  INVX1 U147 ( .A(n28), .Y(n92) );
  AND2X1 U148 ( .A(\read2<5> ), .B(n65), .Y(n27) );
  INVX1 U149 ( .A(n27), .Y(n93) );
  AND2X1 U150 ( .A(\read2<6> ), .B(n65), .Y(n26) );
  INVX1 U151 ( .A(n26), .Y(n94) );
  AND2X1 U152 ( .A(\read2<7> ), .B(n65), .Y(n25) );
  INVX1 U153 ( .A(n25), .Y(n95) );
  AND2X1 U154 ( .A(\read2<8> ), .B(n65), .Y(n24) );
  INVX1 U155 ( .A(n24), .Y(n96) );
  AND2X1 U156 ( .A(\read2<9> ), .B(n65), .Y(n23) );
  INVX1 U157 ( .A(n23), .Y(n97) );
  OR2X1 U158 ( .A(n21), .B(n63), .Y(n62) );
  INVX1 U159 ( .A(n62), .Y(n98) );
  OR2X1 U160 ( .A(n21), .B(n42), .Y(n41) );
  INVX1 U161 ( .A(n41), .Y(n99) );
  BUFX2 U162 ( .A(\read2regsel<2> ), .Y(n106) );
  BUFX2 U163 ( .A(\read1regsel<2> ), .Y(n109) );
  INVX1 U164 ( .A(n112), .Y(n111) );
  INVX1 U165 ( .A(rst), .Y(n112) );
  BUFX2 U166 ( .A(\writeregsel<0> ), .Y(n101) );
  BUFX2 U167 ( .A(\writeregsel<2> ), .Y(n103) );
  BUFX2 U168 ( .A(\writeregsel<1> ), .Y(n102) );
  BUFX2 U169 ( .A(\read2regsel<0> ), .Y(n104) );
  BUFX2 U170 ( .A(\read1regsel<0> ), .Y(n107) );
  BUFX2 U171 ( .A(\read2regsel<1> ), .Y(n105) );
  BUFX2 U172 ( .A(\read1regsel<1> ), .Y(n108) );
  INVX1 U173 ( .A(write), .Y(n21) );
  INVX1 U174 ( .A(\writedata<0> ), .Y(n20) );
  INVX1 U175 ( .A(\writedata<1> ), .Y(n19) );
  INVX1 U176 ( .A(\writedata<2> ), .Y(n18) );
  INVX1 U177 ( .A(\writedata<3> ), .Y(n17) );
  INVX1 U178 ( .A(\writedata<4> ), .Y(n16) );
  INVX1 U179 ( .A(\writedata<5> ), .Y(n15) );
  INVX1 U180 ( .A(\writedata<6> ), .Y(n14) );
  INVX1 U181 ( .A(\writedata<7> ), .Y(n13) );
  INVX1 U182 ( .A(\writedata<8> ), .Y(n12) );
  INVX1 U183 ( .A(\writedata<9> ), .Y(n11) );
  INVX1 U184 ( .A(\writedata<10> ), .Y(n10) );
  INVX1 U185 ( .A(\writedata<11> ), .Y(n9) );
  INVX1 U186 ( .A(\writedata<12> ), .Y(n8) );
  INVX1 U187 ( .A(\writedata<13> ), .Y(n7) );
  INVX1 U188 ( .A(\writedata<14> ), .Y(n6) );
  INVX1 U189 ( .A(\writedata<15> ), .Y(n5) );
  BUFX2 U190 ( .A(clk), .Y(n110) );
endmodule

