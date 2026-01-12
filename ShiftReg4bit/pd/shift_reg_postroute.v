module shift_reg_4bit (clk,
    din,
    rst,
    q);
 input clk;
 input din;
 input rst;
 output [3:0] q;

 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire [3:0] _00_;

 INV_X1 _09_ (.A(q[0]),
    .ZN(_01_));
 INV_X1 _10_ (.A(q[1]),
    .ZN(_02_));
 INV_X1 _11_ (.A(q[2]),
    .ZN(_03_));
 INV_X1 _12_ (.A(din),
    .ZN(_04_));
 NOR2_X1 _13_ (.A1(_01_),
    .A2(rst),
    .ZN(_00_[1]));
 NOR2_X1 _14_ (.A1(rst),
    .A2(_02_),
    .ZN(_00_[2]));
 NOR2_X1 _15_ (.A1(rst),
    .A2(_03_),
    .ZN(_00_[3]));
 NOR2_X1 _16_ (.A1(rst),
    .A2(_04_),
    .ZN(_00_[0]));
 DFF_X1 _17_ (.D(_00_[0]),
    .CK(clknet_1_1__leaf_clk),
    .Q(q[0]),
    .QN(_05_));
 DFF_X1 _18_ (.D(_00_[1]),
    .CK(clknet_1_1__leaf_clk),
    .Q(q[1]),
    .QN(_06_));
 DFF_X1 _19_ (.D(_00_[2]),
    .CK(clknet_1_0__leaf_clk),
    .Q(q[2]),
    .QN(_07_));
 DFF_X1 _20_ (.D(_00_[3]),
    .CK(clknet_1_0__leaf_clk),
    .Q(q[3]),
    .QN(_08_));
 CLKBUF_X1 clkbuf_0_clk (.A(clk),
    .Z(clknet_0_clk));
 CLKBUF_X1 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .Z(clknet_1_0__leaf_clk));
 CLKBUF_X1 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .Z(clknet_1_1__leaf_clk));
endmodule
