module alu_8bit_top (
    input        clk,
    input        rst,
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] ALU_Sel,
    input        Cin,
    output [7:0] Result
);

    reg [7:0] A_r, B_r;
    reg [2:0] Sel_r;
    reg       Cin_r;
    wire [7:0] Result_w;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            A_r   <= 8'b0;
            B_r   <= 8'b0;
            Sel_r <= 3'b0;
            Cin_r <= 1'b0;
        end else begin
            A_r   <= A;
            B_r   <= B;
            Sel_r <= ALU_Sel;
            Cin_r <= Cin;
        end
    end

    alu_8bit u_alu (
        .A(A_r),
        .B(B_r),
        .ALU_Sel(Sel_r),
        .Cin(Cin_r),
        .Result(Result_w),
        .Cout(),
        .Zero(),
        .Negative(),
        .Overflow()
    );

    assign Result = Result_w;

endmodule

