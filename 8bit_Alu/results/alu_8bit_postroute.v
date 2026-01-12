module alu_8bit_top (Cin,
    clk,
    rst,
    A,
    ALU_Sel,
    B,
    Result);
 input Cin;
 input clk;
 input rst;
 input [7:0] A;
 input [2:0] ALU_Sel;
 input [7:0] B;
 output [7:0] Result;

 wire Cin_r;
 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire _32_;
 wire _33_;
 wire _34_;
 wire _35_;
 wire _36_;
 wire _37_;
 wire _38_;
 wire _39_;
 wire \u_alu/Cout ;
 wire \u_alu/Overflow ;
 wire \u_alu/Zero ;
 wire \u_alu/_000_ ;
 wire \u_alu/_001_ ;
 wire \u_alu/_002_ ;
 wire \u_alu/_003_ ;
 wire \u_alu/_004_ ;
 wire \u_alu/_005_ ;
 wire \u_alu/_006_ ;
 wire \u_alu/_007_ ;
 wire \u_alu/_008_ ;
 wire \u_alu/_009_ ;
 wire \u_alu/_010_ ;
 wire \u_alu/_011_ ;
 wire \u_alu/_012_ ;
 wire \u_alu/_013_ ;
 wire \u_alu/_014_ ;
 wire \u_alu/_015_ ;
 wire \u_alu/_016_ ;
 wire \u_alu/_017_ ;
 wire \u_alu/_018_ ;
 wire \u_alu/_019_ ;
 wire \u_alu/_020_ ;
 wire \u_alu/_021_ ;
 wire \u_alu/_022_ ;
 wire \u_alu/_023_ ;
 wire \u_alu/_024_ ;
 wire \u_alu/_025_ ;
 wire \u_alu/_026_ ;
 wire \u_alu/_027_ ;
 wire \u_alu/_028_ ;
 wire \u_alu/_029_ ;
 wire \u_alu/_030_ ;
 wire \u_alu/_031_ ;
 wire \u_alu/_032_ ;
 wire \u_alu/_033_ ;
 wire \u_alu/_034_ ;
 wire \u_alu/_035_ ;
 wire \u_alu/_036_ ;
 wire \u_alu/_037_ ;
 wire \u_alu/_038_ ;
 wire \u_alu/_039_ ;
 wire \u_alu/_040_ ;
 wire \u_alu/_041_ ;
 wire \u_alu/_042_ ;
 wire \u_alu/_043_ ;
 wire \u_alu/_044_ ;
 wire \u_alu/_045_ ;
 wire \u_alu/_046_ ;
 wire \u_alu/_047_ ;
 wire \u_alu/_048_ ;
 wire \u_alu/_049_ ;
 wire \u_alu/_050_ ;
 wire \u_alu/_051_ ;
 wire \u_alu/_052_ ;
 wire \u_alu/_053_ ;
 wire \u_alu/_054_ ;
 wire \u_alu/_055_ ;
 wire \u_alu/_056_ ;
 wire \u_alu/_057_ ;
 wire \u_alu/_058_ ;
 wire \u_alu/_059_ ;
 wire \u_alu/_060_ ;
 wire \u_alu/_061_ ;
 wire \u_alu/_062_ ;
 wire \u_alu/_063_ ;
 wire \u_alu/_064_ ;
 wire \u_alu/_065_ ;
 wire \u_alu/_066_ ;
 wire \u_alu/_067_ ;
 wire \u_alu/_068_ ;
 wire \u_alu/_069_ ;
 wire \u_alu/_070_ ;
 wire \u_alu/_071_ ;
 wire \u_alu/_072_ ;
 wire \u_alu/_073_ ;
 wire \u_alu/_074_ ;
 wire \u_alu/_075_ ;
 wire \u_alu/_076_ ;
 wire \u_alu/_077_ ;
 wire \u_alu/_078_ ;
 wire \u_alu/_079_ ;
 wire \u_alu/_080_ ;
 wire \u_alu/_081_ ;
 wire \u_alu/_082_ ;
 wire \u_alu/_083_ ;
 wire \u_alu/_084_ ;
 wire \u_alu/_085_ ;
 wire \u_alu/_086_ ;
 wire \u_alu/_087_ ;
 wire \u_alu/_088_ ;
 wire \u_alu/_089_ ;
 wire \u_alu/_090_ ;
 wire \u_alu/_091_ ;
 wire \u_alu/_092_ ;
 wire \u_alu/_093_ ;
 wire \u_alu/_094_ ;
 wire \u_alu/_095_ ;
 wire \u_alu/_096_ ;
 wire \u_alu/_097_ ;
 wire \u_alu/_098_ ;
 wire \u_alu/_099_ ;
 wire \u_alu/_100_ ;
 wire \u_alu/_101_ ;
 wire \u_alu/_102_ ;
 wire \u_alu/_103_ ;
 wire \u_alu/_104_ ;
 wire \u_alu/_105_ ;
 wire \u_alu/_106_ ;
 wire \u_alu/_107_ ;
 wire \u_alu/_108_ ;
 wire \u_alu/_109_ ;
 wire \u_alu/_110_ ;
 wire \u_alu/_111_ ;
 wire \u_alu/_112_ ;
 wire \u_alu/_113_ ;
 wire \u_alu/_114_ ;
 wire \u_alu/_115_ ;
 wire \u_alu/_116_ ;
 wire \u_alu/_117_ ;
 wire \u_alu/_118_ ;
 wire \u_alu/_119_ ;
 wire \u_alu/_120_ ;
 wire \u_alu/_121_ ;
 wire \u_alu/_122_ ;
 wire \u_alu/_123_ ;
 wire \u_alu/_124_ ;
 wire \u_alu/_125_ ;
 wire \u_alu/_126_ ;
 wire \u_alu/_127_ ;
 wire \u_alu/_128_ ;
 wire \u_alu/_129_ ;
 wire \u_alu/_130_ ;
 wire \u_alu/_131_ ;
 wire \u_alu/_132_ ;
 wire \u_alu/_133_ ;
 wire \u_alu/_134_ ;
 wire \u_alu/_135_ ;
 wire \u_alu/_136_ ;
 wire \u_alu/_137_ ;
 wire \u_alu/_138_ ;
 wire \u_alu/_139_ ;
 wire \u_alu/_140_ ;
 wire \u_alu/_141_ ;
 wire \u_alu/_142_ ;
 wire \u_alu/_143_ ;
 wire \u_alu/_144_ ;
 wire \u_alu/_145_ ;
 wire \u_alu/_146_ ;
 wire \u_alu/_147_ ;
 wire \u_alu/_148_ ;
 wire \u_alu/_149_ ;
 wire \u_alu/_150_ ;
 wire \u_alu/_151_ ;
 wire \u_alu/_152_ ;
 wire \u_alu/_153_ ;
 wire \u_alu/_154_ ;
 wire \u_alu/_155_ ;
 wire \u_alu/_156_ ;
 wire \u_alu/_157_ ;
 wire \u_alu/_158_ ;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire [7:0] A_r;
 wire [7:0] B_r;
 wire [7:0] Result_w;
 wire [2:0] Sel_r;

 INV_X1 _40_ (.A(rst),
    .ZN(_19_));
 INV_X1 _41_ (.A(rst),
    .ZN(_00_));
 INV_X1 _42_ (.A(rst),
    .ZN(_01_));
 INV_X1 _43_ (.A(rst),
    .ZN(_02_));
 INV_X1 _44_ (.A(rst),
    .ZN(_03_));
 INV_X1 _45_ (.A(rst),
    .ZN(_04_));
 INV_X1 _46_ (.A(rst),
    .ZN(_05_));
 INV_X1 _47_ (.A(rst),
    .ZN(_06_));
 INV_X1 _48_ (.A(rst),
    .ZN(_07_));
 INV_X1 _49_ (.A(rst),
    .ZN(_08_));
 INV_X1 _50_ (.A(rst),
    .ZN(_09_));
 INV_X1 _51_ (.A(rst),
    .ZN(_10_));
 INV_X1 _52_ (.A(rst),
    .ZN(_11_));
 INV_X1 _53_ (.A(rst),
    .ZN(_12_));
 INV_X1 _54_ (.A(rst),
    .ZN(_13_));
 INV_X1 _55_ (.A(rst),
    .ZN(_14_));
 INV_X1 _56_ (.A(rst),
    .ZN(_15_));
 INV_X1 _57_ (.A(rst),
    .ZN(_16_));
 INV_X1 _58_ (.A(rst),
    .ZN(_17_));
 INV_X1 _59_ (.A(rst),
    .ZN(_18_));
 DFFR_X1 _60_ (.D(A[0]),
    .RN(_00_),
    .CK(clknet_1_0__leaf_clk),
    .Q(A_r[0]),
    .QN(_20_));
 DFFR_X1 _61_ (.D(A[1]),
    .RN(_01_),
    .CK(clknet_1_0__leaf_clk),
    .Q(A_r[1]),
    .QN(_21_));
 DFFR_X1 _62_ (.D(A[2]),
    .RN(_02_),
    .CK(clknet_1_1__leaf_clk),
    .Q(A_r[2]),
    .QN(_22_));
 DFFR_X1 _63_ (.D(A[3]),
    .RN(_03_),
    .CK(clknet_1_0__leaf_clk),
    .Q(A_r[3]),
    .QN(_23_));
 DFFR_X1 _64_ (.D(A[4]),
    .RN(_04_),
    .CK(clknet_1_1__leaf_clk),
    .Q(A_r[4]),
    .QN(_24_));
 DFFR_X1 _65_ (.D(A[5]),
    .RN(_05_),
    .CK(clknet_1_1__leaf_clk),
    .Q(A_r[5]),
    .QN(_25_));
 DFFR_X1 _66_ (.D(A[6]),
    .RN(_06_),
    .CK(clknet_1_0__leaf_clk),
    .Q(A_r[6]),
    .QN(_26_));
 DFFR_X1 _67_ (.D(A[7]),
    .RN(_07_),
    .CK(clknet_1_0__leaf_clk),
    .Q(A_r[7]),
    .QN(_27_));
 DFFR_X1 _68_ (.D(ALU_Sel[0]),
    .RN(_08_),
    .CK(clknet_1_1__leaf_clk),
    .Q(Sel_r[0]),
    .QN(_28_));
 DFFR_X1 _69_ (.D(ALU_Sel[1]),
    .RN(_09_),
    .CK(clknet_1_0__leaf_clk),
    .Q(Sel_r[1]),
    .QN(_29_));
 DFFR_X1 _70_ (.D(ALU_Sel[2]),
    .RN(_10_),
    .CK(clknet_1_0__leaf_clk),
    .Q(Sel_r[2]),
    .QN(_30_));
 DFFR_X1 _71_ (.D(Cin),
    .RN(_11_),
    .CK(clknet_1_1__leaf_clk),
    .Q(Cin_r),
    .QN(_31_));
 DFFR_X1 _72_ (.D(B[0]),
    .RN(_12_),
    .CK(clknet_1_1__leaf_clk),
    .Q(B_r[0]),
    .QN(_32_));
 DFFR_X1 _73_ (.D(B[1]),
    .RN(_13_),
    .CK(clknet_1_1__leaf_clk),
    .Q(B_r[1]),
    .QN(_33_));
 DFFR_X1 _74_ (.D(B[2]),
    .RN(_14_),
    .CK(clknet_1_1__leaf_clk),
    .Q(B_r[2]),
    .QN(_34_));
 DFFR_X1 _75_ (.D(B[3]),
    .RN(_15_),
    .CK(clknet_1_1__leaf_clk),
    .Q(B_r[3]),
    .QN(_35_));
 DFFR_X1 _76_ (.D(B[4]),
    .RN(_16_),
    .CK(clknet_1_1__leaf_clk),
    .Q(B_r[4]),
    .QN(_36_));
 DFFR_X1 _77_ (.D(B[5]),
    .RN(_17_),
    .CK(clknet_1_0__leaf_clk),
    .Q(B_r[5]),
    .QN(_37_));
 DFFR_X1 _78_ (.D(B[6]),
    .RN(_18_),
    .CK(clknet_1_0__leaf_clk),
    .Q(B_r[6]),
    .QN(_38_));
 DFFR_X1 _79_ (.D(B[7]),
    .RN(_19_),
    .CK(clknet_1_0__leaf_clk),
    .Q(B_r[7]),
    .QN(_39_));
 OAI22_X1 \u_alu/_159_  (.A1(A_r[1]),
    .A2(\u_alu/_117_ ),
    .B1(\u_alu/_128_ ),
    .B2(\u_alu/_114_ ),
    .ZN(\u_alu/_139_ ));
 AOI21_X1 \u_alu/_160_  (.A(\u_alu/_139_ ),
    .B1(\u_alu/_131_ ),
    .B2(\u_alu/_130_ ),
    .ZN(\u_alu/_140_ ));
 AOI222_X1 \u_alu/_161_  (.A1(A_r[2]),
    .A2(\u_alu/_121_ ),
    .B1(\u_alu/_132_ ),
    .B2(\u_alu/_134_ ),
    .C1(\u_alu/_136_ ),
    .C2(A_r[0]),
    .ZN(\u_alu/_141_ ));
 NAND4_X1 \u_alu/_162_  (.A1(\u_alu/_135_ ),
    .A2(\u_alu/_138_ ),
    .A3(\u_alu/_140_ ),
    .A4(\u_alu/_141_ ),
    .ZN(Result_w[1]));
 NOR2_X1 \u_alu/_163_  (.A1(\u_alu/_098_ ),
    .A2(B_r[2]),
    .ZN(\u_alu/_142_ ));
 XOR2_X1 \u_alu/_164_  (.A(A_r[2]),
    .B(B_r[2]),
    .Z(\u_alu/_143_ ));
 INV_X1 \u_alu/_165_  (.A(\u_alu/_143_ ),
    .ZN(\u_alu/_144_ ));
 OAI21_X1 \u_alu/_166_  (.A(\u_alu/_137_ ),
    .B1(\u_alu/_128_ ),
    .B2(\u_alu/_112_ ),
    .ZN(\u_alu/_145_ ));
 XNOR2_X1 \u_alu/_167_  (.A(\u_alu/_143_ ),
    .B(\u_alu/_145_ ),
    .ZN(\u_alu/_146_ ));
 OR2_X1 \u_alu/_168_  (.A1(\u_alu/_130_ ),
    .A2(\u_alu/_146_ ),
    .ZN(\u_alu/_147_ ));
 XNOR2_X1 \u_alu/_169_  (.A(\u_alu/_130_ ),
    .B(\u_alu/_146_ ),
    .ZN(\u_alu/_148_ ));
 OAI21_X1 \u_alu/_170_  (.A(\u_alu/_133_ ),
    .B1(B_r[1]),
    .B2(\u_alu/_097_ ),
    .ZN(\u_alu/_149_ ));
 NAND2_X1 \u_alu/_171_  (.A1(\u_alu/_144_ ),
    .A2(\u_alu/_149_ ),
    .ZN(\u_alu/_150_ ));
 XNOR2_X1 \u_alu/_172_  (.A(\u_alu/_144_ ),
    .B(\u_alu/_149_ ),
    .ZN(\u_alu/_151_ ));
 AND2_X1 \u_alu/_173_  (.A1(A_r[2]),
    .A2(B_r[2]),
    .ZN(\u_alu/_152_ ));
 NOR2_X1 \u_alu/_174_  (.A1(A_r[2]),
    .A2(\u_alu/_117_ ),
    .ZN(\u_alu/_153_ ));
 AOI221_X1 \u_alu/_175_  (.A(\u_alu/_153_ ),
    .B1(\u_alu/_143_ ),
    .B2(\u_alu/_113_ ),
    .C1(A_r[1]),
    .C2(\u_alu/_136_ ),
    .ZN(\u_alu/_154_ ));
 OAI21_X1 \u_alu/_176_  (.A(\u_alu/_111_ ),
    .B1(B_r[2]),
    .B2(A_r[2]),
    .ZN(\u_alu/_155_ ));
 AOI22_X1 \u_alu/_177_  (.A1(A_r[3]),
    .A2(\u_alu/_121_ ),
    .B1(\u_alu/_124_ ),
    .B2(\u_alu/_152_ ),
    .ZN(\u_alu/_156_ ));
 AND3_X1 \u_alu/_178_  (.A1(\u_alu/_154_ ),
    .A2(\u_alu/_155_ ),
    .A3(\u_alu/_156_ ),
    .ZN(\u_alu/_157_ ));
 OAI221_X1 \u_alu/_179_  (.A(\u_alu/_157_ ),
    .B1(\u_alu/_151_ ),
    .B2(\u_alu/_120_ ),
    .C1(\u_alu/_107_ ),
    .C2(\u_alu/_148_ ),
    .ZN(Result_w[2]));
 NAND2_X1 \u_alu/_180_  (.A1(\u_alu/_099_ ),
    .A2(B_r[3]),
    .ZN(\u_alu/_158_ ));
 NOR2_X1 \u_alu/_181_  (.A1(\u_alu/_099_ ),
    .A2(B_r[3]),
    .ZN(\u_alu/_000_ ));
 XOR2_X1 \u_alu/_182_  (.A(A_r[3]),
    .B(B_r[3]),
    .Z(\u_alu/_001_ ));
 INV_X1 \u_alu/_183_  (.A(\u_alu/_001_ ),
    .ZN(\u_alu/_002_ ));
 AOI21_X1 \u_alu/_184_  (.A(\u_alu/_152_ ),
    .B1(\u_alu/_145_ ),
    .B2(\u_alu/_143_ ),
    .ZN(\u_alu/_003_ ));
 XNOR2_X1 \u_alu/_185_  (.A(\u_alu/_002_ ),
    .B(\u_alu/_003_ ),
    .ZN(\u_alu/_004_ ));
 OR2_X1 \u_alu/_186_  (.A1(\u_alu/_147_ ),
    .A2(\u_alu/_004_ ),
    .ZN(\u_alu/_005_ ));
 XNOR2_X1 \u_alu/_187_  (.A(\u_alu/_147_ ),
    .B(\u_alu/_004_ ),
    .ZN(\u_alu/_006_ ));
 OAI21_X1 \u_alu/_188_  (.A(\u_alu/_150_ ),
    .B1(B_r[2]),
    .B2(\u_alu/_098_ ),
    .ZN(\u_alu/_007_ ));
 XNOR2_X1 \u_alu/_189_  (.A(\u_alu/_001_ ),
    .B(\u_alu/_007_ ),
    .ZN(\u_alu/_008_ ));
 NAND2_X1 \u_alu/_190_  (.A1(A_r[3]),
    .A2(B_r[3]),
    .ZN(\u_alu/_009_ ));
 NOR2_X1 \u_alu/_191_  (.A1(A_r[3]),
    .A2(\u_alu/_117_ ),
    .ZN(\u_alu/_010_ ));
 NOR2_X1 \u_alu/_192_  (.A1(\u_alu/_125_ ),
    .A2(\u_alu/_009_ ),
    .ZN(\u_alu/_011_ ));
 AOI221_X1 \u_alu/_193_  (.A(\u_alu/_010_ ),
    .B1(\u_alu/_001_ ),
    .B2(\u_alu/_113_ ),
    .C1(A_r[2]),
    .C2(\u_alu/_136_ ),
    .ZN(\u_alu/_012_ ));
 OAI21_X1 \u_alu/_194_  (.A(\u_alu/_111_ ),
    .B1(B_r[3]),
    .B2(A_r[3]),
    .ZN(\u_alu/_013_ ));
 AOI21_X1 \u_alu/_195_  (.A(\u_alu/_011_ ),
    .B1(\u_alu/_121_ ),
    .B2(A_r[4]),
    .ZN(\u_alu/_014_ ));
 NAND3_X1 \u_alu/_196_  (.A1(\u_alu/_012_ ),
    .A2(\u_alu/_013_ ),
    .A3(\u_alu/_014_ ),
    .ZN(\u_alu/_015_ ));
 AOI21_X1 \u_alu/_197_  (.A(\u_alu/_015_ ),
    .B1(\u_alu/_008_ ),
    .B2(\u_alu/_119_ ),
    .ZN(\u_alu/_016_ ));
 OAI21_X1 \u_alu/_198_  (.A(\u_alu/_016_ ),
    .B1(\u_alu/_006_ ),
    .B2(\u_alu/_107_ ),
    .ZN(Result_w[3]));
 NOR2_X1 \u_alu/_199_  (.A1(\u_alu/_100_ ),
    .A2(B_r[4]),
    .ZN(\u_alu/_017_ ));
 XOR2_X1 \u_alu/_200_  (.A(A_r[4]),
    .B(B_r[4]),
    .Z(\u_alu/_018_ ));
 OAI21_X1 \u_alu/_201_  (.A(\u_alu/_009_ ),
    .B1(\u_alu/_003_ ),
    .B2(\u_alu/_002_ ),
    .ZN(\u_alu/_019_ ));
 XNOR2_X1 \u_alu/_202_  (.A(\u_alu/_018_ ),
    .B(\u_alu/_019_ ),
    .ZN(\u_alu/_020_ ));
 OR2_X1 \u_alu/_203_  (.A1(\u_alu/_005_ ),
    .A2(\u_alu/_020_ ),
    .ZN(\u_alu/_021_ ));
 XNOR2_X1 \u_alu/_204_  (.A(\u_alu/_005_ ),
    .B(\u_alu/_020_ ),
    .ZN(\u_alu/_022_ ));
 AOI211_X1 \u_alu/_205_  (.A(\u_alu/_142_ ),
    .B(\u_alu/_000_ ),
    .C1(\u_alu/_149_ ),
    .C2(\u_alu/_144_ ),
    .ZN(\u_alu/_023_ ));
 OAI21_X1 \u_alu/_206_  (.A(\u_alu/_158_ ),
    .B1(\u_alu/_000_ ),
    .B2(\u_alu/_007_ ),
    .ZN(\u_alu/_024_ ));
 AOI211_X1 \u_alu/_207_  (.A(\u_alu/_018_ ),
    .B(\u_alu/_023_ ),
    .C1(\u_alu/_099_ ),
    .C2(B_r[3]),
    .ZN(\u_alu/_025_ ));
 XNOR2_X1 \u_alu/_208_  (.A(\u_alu/_018_ ),
    .B(\u_alu/_024_ ),
    .ZN(\u_alu/_026_ ));
 NOR2_X1 \u_alu/_209_  (.A1(A_r[4]),
    .A2(\u_alu/_117_ ),
    .ZN(\u_alu/_027_ ));
 OAI21_X1 \u_alu/_210_  (.A(\u_alu/_111_ ),
    .B1(B_r[4]),
    .B2(A_r[4]),
    .ZN(\u_alu/_028_ ));
 AND2_X1 \u_alu/_211_  (.A1(A_r[4]),
    .A2(B_r[4]),
    .ZN(\u_alu/_029_ ));
 NAND2_X1 \u_alu/_212_  (.A1(\u_alu/_124_ ),
    .A2(\u_alu/_029_ ),
    .ZN(\u_alu/_030_ ));
 AOI21_X1 \u_alu/_213_  (.A(\u_alu/_027_ ),
    .B1(\u_alu/_136_ ),
    .B2(A_r[3]),
    .ZN(\u_alu/_031_ ));
 AOI22_X1 \u_alu/_214_  (.A1(A_r[5]),
    .A2(\u_alu/_121_ ),
    .B1(\u_alu/_018_ ),
    .B2(\u_alu/_113_ ),
    .ZN(\u_alu/_032_ ));
 AND4_X1 \u_alu/_215_  (.A1(\u_alu/_028_ ),
    .A2(\u_alu/_030_ ),
    .A3(\u_alu/_031_ ),
    .A4(\u_alu/_032_ ),
    .ZN(\u_alu/_033_ ));
 OAI221_X1 \u_alu/_216_  (.A(\u_alu/_033_ ),
    .B1(\u_alu/_026_ ),
    .B2(\u_alu/_120_ ),
    .C1(\u_alu/_107_ ),
    .C2(\u_alu/_022_ ),
    .ZN(Result_w[4]));
 NAND2_X1 \u_alu/_217_  (.A1(A_r[5]),
    .A2(\u_alu/_103_ ),
    .ZN(\u_alu/_034_ ));
 XNOR2_X1 \u_alu/_218_  (.A(A_r[5]),
    .B(B_r[5]),
    .ZN(\u_alu/_035_ ));
 AOI21_X1 \u_alu/_219_  (.A(\u_alu/_029_ ),
    .B1(\u_alu/_019_ ),
    .B2(\u_alu/_018_ ),
    .ZN(\u_alu/_036_ ));
 XNOR2_X1 \u_alu/_220_  (.A(\u_alu/_035_ ),
    .B(\u_alu/_036_ ),
    .ZN(\u_alu/_037_ ));
 NOR2_X1 \u_alu/_221_  (.A1(\u_alu/_021_ ),
    .A2(\u_alu/_037_ ),
    .ZN(\u_alu/_038_ ));
 XNOR2_X1 \u_alu/_222_  (.A(\u_alu/_021_ ),
    .B(\u_alu/_037_ ),
    .ZN(\u_alu/_039_ ));
 OAI21_X1 \u_alu/_223_  (.A(\u_alu/_035_ ),
    .B1(\u_alu/_025_ ),
    .B2(\u_alu/_017_ ),
    .ZN(\u_alu/_040_ ));
 NOR3_X1 \u_alu/_224_  (.A1(\u_alu/_017_ ),
    .A2(\u_alu/_025_ ),
    .A3(\u_alu/_035_ ),
    .ZN(\u_alu/_041_ ));
 NAND2_X1 \u_alu/_225_  (.A1(\u_alu/_119_ ),
    .A2(\u_alu/_040_ ),
    .ZN(\u_alu/_042_ ));
 NOR2_X1 \u_alu/_226_  (.A1(A_r[5]),
    .A2(\u_alu/_117_ ),
    .ZN(\u_alu/_043_ ));
 NAND2_X1 \u_alu/_227_  (.A1(A_r[5]),
    .A2(B_r[5]),
    .ZN(\u_alu/_044_ ));
 OR2_X1 \u_alu/_228_  (.A1(A_r[5]),
    .A2(B_r[5]),
    .ZN(\u_alu/_045_ ));
 AOI22_X1 \u_alu/_229_  (.A1(A_r[4]),
    .A2(\u_alu/_136_ ),
    .B1(\u_alu/_045_ ),
    .B2(\u_alu/_111_ ),
    .ZN(\u_alu/_046_ ));
 OAI221_X1 \u_alu/_230_  (.A(\u_alu/_046_ ),
    .B1(\u_alu/_044_ ),
    .B2(\u_alu/_125_ ),
    .C1(\u_alu/_114_ ),
    .C2(\u_alu/_035_ ),
    .ZN(\u_alu/_047_ ));
 AOI211_X1 \u_alu/_231_  (.A(\u_alu/_043_ ),
    .B(\u_alu/_047_ ),
    .C1(A_r[6]),
    .C2(\u_alu/_121_ ),
    .ZN(\u_alu/_048_ ));
 OAI221_X1 \u_alu/_232_  (.A(\u_alu/_048_ ),
    .B1(\u_alu/_042_ ),
    .B2(\u_alu/_041_ ),
    .C1(\u_alu/_107_ ),
    .C2(\u_alu/_039_ ),
    .ZN(Result_w[5]));
 NOR2_X1 \u_alu/_233_  (.A1(\u_alu/_101_ ),
    .A2(B_r[6]),
    .ZN(\u_alu/_049_ ));
 XOR2_X1 \u_alu/_234_  (.A(A_r[6]),
    .B(B_r[6]),
    .Z(\u_alu/_050_ ));
 OAI21_X1 \u_alu/_235_  (.A(\u_alu/_044_ ),
    .B1(\u_alu/_036_ ),
    .B2(\u_alu/_035_ ),
    .ZN(\u_alu/_051_ ));
 XOR2_X1 \u_alu/_236_  (.A(\u_alu/_050_ ),
    .B(\u_alu/_051_ ),
    .Z(\u_alu/_052_ ));
 AND2_X1 \u_alu/_237_  (.A1(\u_alu/_038_ ),
    .A2(\u_alu/_052_ ),
    .ZN(\u_alu/_053_ ));
 XNOR2_X1 \u_alu/_238_  (.A(\u_alu/_038_ ),
    .B(\u_alu/_052_ ),
    .ZN(\u_alu/_054_ ));
 NAND3_X1 \u_alu/_239_  (.A1(\u_alu/_034_ ),
    .A2(\u_alu/_040_ ),
    .A3(\u_alu/_050_ ),
    .ZN(\u_alu/_055_ ));
 AOI21_X1 \u_alu/_240_  (.A(\u_alu/_050_ ),
    .B1(\u_alu/_040_ ),
    .B2(\u_alu/_034_ ),
    .ZN(\u_alu/_056_ ));
 NOR2_X1 \u_alu/_241_  (.A1(\u_alu/_120_ ),
    .A2(\u_alu/_056_ ),
    .ZN(\u_alu/_057_ ));
 AND2_X1 \u_alu/_242_  (.A1(A_r[6]),
    .A2(B_r[6]),
    .ZN(\u_alu/_058_ ));
 NOR2_X1 \u_alu/_243_  (.A1(\u_alu/_114_ ),
    .A2(\u_alu/_058_ ),
    .ZN(\u_alu/_059_ ));
 OAI22_X1 \u_alu/_244_  (.A1(A_r[6]),
    .A2(B_r[6]),
    .B1(\u_alu/_111_ ),
    .B2(\u_alu/_059_ ),
    .ZN(\u_alu/_060_ ));
 AOI22_X1 \u_alu/_245_  (.A1(A_r[5]),
    .A2(\u_alu/_136_ ),
    .B1(\u_alu/_058_ ),
    .B2(\u_alu/_124_ ),
    .ZN(\u_alu/_061_ ));
 NOR2_X1 \u_alu/_246_  (.A1(A_r[6]),
    .A2(\u_alu/_117_ ),
    .ZN(\u_alu/_062_ ));
 AOI21_X1 \u_alu/_247_  (.A(\u_alu/_062_ ),
    .B1(\u_alu/_121_ ),
    .B2(A_r[7]),
    .ZN(\u_alu/_063_ ));
 NAND3_X1 \u_alu/_248_  (.A1(\u_alu/_060_ ),
    .A2(\u_alu/_061_ ),
    .A3(\u_alu/_063_ ),
    .ZN(\u_alu/_064_ ));
 AOI21_X1 \u_alu/_249_  (.A(\u_alu/_064_ ),
    .B1(\u_alu/_057_ ),
    .B2(\u_alu/_055_ ),
    .ZN(\u_alu/_065_ ));
 OAI21_X1 \u_alu/_250_  (.A(\u_alu/_065_ ),
    .B1(\u_alu/_054_ ),
    .B2(\u_alu/_107_ ),
    .ZN(Result_w[6]));
 NOR2_X1 \u_alu/_251_  (.A1(A_r[7]),
    .A2(\u_alu/_104_ ),
    .ZN(\u_alu/_066_ ));
 XNOR2_X1 \u_alu/_252_  (.A(A_r[7]),
    .B(B_r[7]),
    .ZN(\u_alu/_067_ ));
 AOI21_X1 \u_alu/_253_  (.A(\u_alu/_058_ ),
    .B1(\u_alu/_051_ ),
    .B2(\u_alu/_050_ ),
    .ZN(\u_alu/_068_ ));
 XOR2_X1 \u_alu/_254_  (.A(\u_alu/_067_ ),
    .B(\u_alu/_068_ ),
    .Z(\u_alu/_069_ ));
 XNOR2_X1 \u_alu/_255_  (.A(\u_alu/_053_ ),
    .B(\u_alu/_069_ ),
    .ZN(\u_alu/_070_ ));
 NOR2_X1 \u_alu/_256_  (.A1(\u_alu/_049_ ),
    .A2(\u_alu/_056_ ),
    .ZN(\u_alu/_071_ ));
 OR3_X1 \u_alu/_257_  (.A1(\u_alu/_049_ ),
    .A2(\u_alu/_056_ ),
    .A3(\u_alu/_067_ ),
    .ZN(\u_alu/_072_ ));
 OAI21_X1 \u_alu/_258_  (.A(\u_alu/_067_ ),
    .B1(\u_alu/_056_ ),
    .B2(\u_alu/_049_ ),
    .ZN(\u_alu/_073_ ));
 NAND3_X1 \u_alu/_259_  (.A1(\u_alu/_119_ ),
    .A2(\u_alu/_072_ ),
    .A3(\u_alu/_073_ ),
    .ZN(\u_alu/_074_ ));
 NOR2_X1 \u_alu/_260_  (.A1(A_r[7]),
    .A2(B_r[7]),
    .ZN(\u_alu/_075_ ));
 NAND2_X1 \u_alu/_261_  (.A1(A_r[7]),
    .A2(B_r[7]),
    .ZN(\u_alu/_076_ ));
 AOI21_X1 \u_alu/_262_  (.A(\u_alu/_111_ ),
    .B1(\u_alu/_113_ ),
    .B2(\u_alu/_076_ ),
    .ZN(\u_alu/_077_ ));
 NOR2_X1 \u_alu/_263_  (.A1(\u_alu/_075_ ),
    .A2(\u_alu/_077_ ),
    .ZN(\u_alu/_078_ ));
 NAND2_X1 \u_alu/_264_  (.A1(A_r[6]),
    .A2(\u_alu/_136_ ),
    .ZN(\u_alu/_079_ ));
 OAI221_X1 \u_alu/_265_  (.A(\u_alu/_079_ ),
    .B1(\u_alu/_076_ ),
    .B2(\u_alu/_125_ ),
    .C1(A_r[7]),
    .C2(\u_alu/_117_ ),
    .ZN(\u_alu/_080_ ));
 NOR2_X1 \u_alu/_266_  (.A1(\u_alu/_078_ ),
    .A2(\u_alu/_080_ ),
    .ZN(\u_alu/_081_ ));
 OAI211_X1 \u_alu/_267_  (.A(\u_alu/_074_ ),
    .B(\u_alu/_081_ ),
    .C1(\u_alu/_107_ ),
    .C2(\u_alu/_070_ ),
    .ZN(Result_w[7]));
 OR4_X1 \u_alu/_268_  (.A1(Result_w[0]),
    .A2(Result_w[1]),
    .A3(Result_w[2]),
    .A4(Result_w[3]),
    .ZN(\u_alu/_082_ ));
 OR3_X1 \u_alu/_269_  (.A1(Result_w[4]),
    .A2(Result_w[5]),
    .A3(\u_alu/_082_ ),
    .ZN(\u_alu/_083_ ));
 NOR3_X1 \u_alu/_270_  (.A1(Result_w[6]),
    .A2(Result_w[7]),
    .A3(\u_alu/_083_ ),
    .ZN(\u_alu/Zero ));
 NOR2_X1 \u_alu/_271_  (.A1(\u_alu/_066_ ),
    .A2(\u_alu/_071_ ),
    .ZN(\u_alu/_084_ ));
 AOI21_X1 \u_alu/_272_  (.A(\u_alu/_049_ ),
    .B1(\u_alu/_104_ ),
    .B2(A_r[7]),
    .ZN(\u_alu/_085_ ));
 AOI211_X1 \u_alu/_273_  (.A(\u_alu/_049_ ),
    .B(\u_alu/_056_ ),
    .C1(A_r[7]),
    .C2(\u_alu/_104_ ),
    .ZN(\u_alu/_086_ ));
 AND2_X1 \u_alu/_274_  (.A1(\u_alu/_070_ ),
    .A2(\u_alu/_076_ ),
    .ZN(\u_alu/_087_ ));
 NOR2_X1 \u_alu/_275_  (.A1(\u_alu/_070_ ),
    .A2(\u_alu/_075_ ),
    .ZN(\u_alu/_088_ ));
 OAI33_X1 \u_alu/_276_  (.A1(\u_alu/_120_ ),
    .A2(\u_alu/_084_ ),
    .A3(\u_alu/_086_ ),
    .B1(\u_alu/_087_ ),
    .B2(\u_alu/_088_ ),
    .B3(\u_alu/_107_ ),
    .ZN(\u_alu/Overflow ));
 OAI21_X1 \u_alu/_277_  (.A(\u_alu/_076_ ),
    .B1(\u_alu/_068_ ),
    .B2(\u_alu/_067_ ),
    .ZN(\u_alu/_089_ ));
 AOI21_X1 \u_alu/_278_  (.A(\u_alu/_089_ ),
    .B1(\u_alu/_069_ ),
    .B2(\u_alu/_053_ ),
    .ZN(\u_alu/_090_ ));
 OAI21_X1 \u_alu/_279_  (.A(\u_alu/_119_ ),
    .B1(\u_alu/_066_ ),
    .B2(\u_alu/_085_ ),
    .ZN(\u_alu/_091_ ));
 AOI21_X1 \u_alu/_280_  (.A(\u_alu/_091_ ),
    .B1(\u_alu/_067_ ),
    .B2(\u_alu/_056_ ),
    .ZN(\u_alu/_092_ ));
 AOI221_X1 \u_alu/_281_  (.A(\u_alu/_092_ ),
    .B1(\u_alu/_136_ ),
    .B2(A_r[7]),
    .C1(A_r[0]),
    .C2(\u_alu/_121_ ),
    .ZN(\u_alu/_093_ ));
 OAI21_X1 \u_alu/_282_  (.A(\u_alu/_093_ ),
    .B1(\u_alu/_090_ ),
    .B2(\u_alu/_107_ ),
    .ZN(\u_alu/Cout ));
 INV_X1 \u_alu/_283_  (.A(Sel_r[2]),
    .ZN(\u_alu/_094_ ));
 INV_X1 \u_alu/_284_  (.A(Sel_r[0]),
    .ZN(\u_alu/_095_ ));
 INV_X1 \u_alu/_285_  (.A(Sel_r[1]),
    .ZN(\u_alu/_096_ ));
 INV_X1 \u_alu/_286_  (.A(A_r[1]),
    .ZN(\u_alu/_097_ ));
 INV_X1 \u_alu/_287_  (.A(A_r[2]),
    .ZN(\u_alu/_098_ ));
 INV_X1 \u_alu/_288_  (.A(A_r[3]),
    .ZN(\u_alu/_099_ ));
 INV_X1 \u_alu/_289_  (.A(A_r[4]),
    .ZN(\u_alu/_100_ ));
 INV_X1 \u_alu/_290_  (.A(A_r[6]),
    .ZN(\u_alu/_101_ ));
 INV_X1 \u_alu/_291_  (.A(B_r[0]),
    .ZN(\u_alu/_102_ ));
 INV_X1 \u_alu/_292_  (.A(B_r[5]),
    .ZN(\u_alu/_103_ ));
 INV_X1 \u_alu/_293_  (.A(B_r[7]),
    .ZN(\u_alu/_104_ ));
 XOR2_X1 \u_alu/_294_  (.A(A_r[0]),
    .B(B_r[0]),
    .Z(\u_alu/_105_ ));
 NOR2_X1 \u_alu/_295_  (.A1(Sel_r[0]),
    .A2(Sel_r[1]),
    .ZN(\u_alu/_106_ ));
 NAND2_X1 \u_alu/_296_  (.A1(\u_alu/_094_ ),
    .A2(\u_alu/_106_ ),
    .ZN(\u_alu/_107_ ));
 NAND2_X1 \u_alu/_297_  (.A1(Cin_r),
    .A2(\u_alu/_105_ ),
    .ZN(\u_alu/_108_ ));
 XNOR2_X1 \u_alu/_298_  (.A(Cin_r),
    .B(\u_alu/_105_ ),
    .ZN(\u_alu/_109_ ));
 NAND2_X1 \u_alu/_299_  (.A1(Sel_r[0]),
    .A2(Sel_r[1]),
    .ZN(\u_alu/_110_ ));
 NOR2_X1 \u_alu/_300_  (.A1(Sel_r[2]),
    .A2(\u_alu/_110_ ),
    .ZN(\u_alu/_111_ ));
 NAND2_X1 \u_alu/_301_  (.A1(A_r[0]),
    .A2(B_r[0]),
    .ZN(\u_alu/_112_ ));
 AND2_X1 \u_alu/_302_  (.A1(Sel_r[2]),
    .A2(\u_alu/_106_ ),
    .ZN(\u_alu/_113_ ));
 NAND2_X1 \u_alu/_303_  (.A1(Sel_r[2]),
    .A2(\u_alu/_106_ ),
    .ZN(\u_alu/_114_ ));
 AND2_X1 \u_alu/_304_  (.A1(\u_alu/_112_ ),
    .A2(\u_alu/_113_ ),
    .ZN(\u_alu/_115_ ));
 OAI22_X1 \u_alu/_305_  (.A1(A_r[0]),
    .A2(B_r[0]),
    .B1(\u_alu/_111_ ),
    .B2(\u_alu/_115_ ),
    .ZN(\u_alu/_116_ ));
 NAND3_X1 \u_alu/_306_  (.A1(Sel_r[2]),
    .A2(Sel_r[0]),
    .A3(\u_alu/_096_ ),
    .ZN(\u_alu/_117_ ));
 NOR2_X1 \u_alu/_307_  (.A1(A_r[0]),
    .A2(\u_alu/_117_ ),
    .ZN(\u_alu/_118_ ));
 NOR3_X1 \u_alu/_308_  (.A1(Sel_r[2]),
    .A2(\u_alu/_095_ ),
    .A3(Sel_r[1]),
    .ZN(\u_alu/_119_ ));
 NAND3_X1 \u_alu/_309_  (.A1(\u_alu/_094_ ),
    .A2(Sel_r[0]),
    .A3(\u_alu/_096_ ),
    .ZN(\u_alu/_120_ ));
 NOR2_X1 \u_alu/_310_  (.A1(\u_alu/_094_ ),
    .A2(\u_alu/_110_ ),
    .ZN(\u_alu/_121_ ));
 NAND2_X1 \u_alu/_311_  (.A1(A_r[1]),
    .A2(\u_alu/_121_ ),
    .ZN(\u_alu/_122_ ));
 NAND2_X1 \u_alu/_312_  (.A1(\u_alu/_095_ ),
    .A2(Sel_r[1]),
    .ZN(\u_alu/_123_ ));
 NOR2_X1 \u_alu/_313_  (.A1(Sel_r[2]),
    .A2(\u_alu/_123_ ),
    .ZN(\u_alu/_124_ ));
 NAND3_X1 \u_alu/_314_  (.A1(\u_alu/_094_ ),
    .A2(\u_alu/_095_ ),
    .A3(Sel_r[1]),
    .ZN(\u_alu/_125_ ));
 OAI21_X1 \u_alu/_315_  (.A(\u_alu/_122_ ),
    .B1(\u_alu/_125_ ),
    .B2(\u_alu/_112_ ),
    .ZN(\u_alu/_126_ ));
 AOI211_X1 \u_alu/_316_  (.A(\u_alu/_118_ ),
    .B(\u_alu/_126_ ),
    .C1(\u_alu/_119_ ),
    .C2(\u_alu/_105_ ),
    .ZN(\u_alu/_127_ ));
 OAI211_X1 \u_alu/_317_  (.A(\u_alu/_116_ ),
    .B(\u_alu/_127_ ),
    .C1(\u_alu/_107_ ),
    .C2(\u_alu/_109_ ),
    .ZN(Result_w[0]));
 XNOR2_X1 \u_alu/_318_  (.A(A_r[1]),
    .B(B_r[1]),
    .ZN(\u_alu/_128_ ));
 XNOR2_X1 \u_alu/_319_  (.A(\u_alu/_112_ ),
    .B(\u_alu/_128_ ),
    .ZN(\u_alu/_129_ ));
 OR2_X1 \u_alu/_320_  (.A1(\u_alu/_108_ ),
    .A2(\u_alu/_129_ ),
    .ZN(\u_alu/_130_ ));
 AOI21_X1 \u_alu/_321_  (.A(\u_alu/_107_ ),
    .B1(\u_alu/_108_ ),
    .B2(\u_alu/_129_ ),
    .ZN(\u_alu/_131_ ));
 OR3_X1 \u_alu/_322_  (.A1(A_r[0]),
    .A2(\u_alu/_102_ ),
    .A3(\u_alu/_128_ ),
    .ZN(\u_alu/_132_ ));
 OAI21_X1 \u_alu/_323_  (.A(\u_alu/_128_ ),
    .B1(\u_alu/_102_ ),
    .B2(A_r[0]),
    .ZN(\u_alu/_133_ ));
 AND2_X1 \u_alu/_324_  (.A1(\u_alu/_119_ ),
    .A2(\u_alu/_133_ ),
    .ZN(\u_alu/_134_ ));
 OAI21_X1 \u_alu/_325_  (.A(\u_alu/_111_ ),
    .B1(B_r[1]),
    .B2(A_r[1]),
    .ZN(\u_alu/_135_ ));
 NOR2_X1 \u_alu/_326_  (.A1(\u_alu/_094_ ),
    .A2(\u_alu/_123_ ),
    .ZN(\u_alu/_136_ ));
 NAND2_X1 \u_alu/_327_  (.A1(A_r[1]),
    .A2(B_r[1]),
    .ZN(\u_alu/_137_ ));
 OR2_X1 \u_alu/_328_  (.A1(\u_alu/_125_ ),
    .A2(\u_alu/_137_ ),
    .ZN(\u_alu/_138_ ));
 CLKBUF_X2 clkbuf_0_clk (.A(clk),
    .Z(clknet_0_clk));
 CLKBUF_X2 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .Z(clknet_1_0__leaf_clk));
 CLKBUF_X2 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .Z(clknet_1_1__leaf_clk));
 assign Result[0] = Result_w[0];
 assign Result[1] = Result_w[1];
 assign Result[2] = Result_w[2];
 assign Result[3] = Result_w[3];
 assign Result[4] = Result_w[4];
 assign Result[5] = Result_w[5];
 assign Result[6] = Result_w[6];
 assign Result[7] = Result_w[7];
endmodule
