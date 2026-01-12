`timescale 1ns/1ps

module tb_alu_8bit;

    reg         clk;
    reg         rst;
    reg  [7:0]  A;
    reg  [7:0]  B;
    reg  [2:0]  ALU_Sel;
    reg         Cin;

    wire [7:0]  Result;

    // Instantiate DUT (TOP MODULE)
    alu_8bit_top dut (
        .clk(clk),
        .rst(rst),
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel),
        .Cin(Cin),
        .Result(Result)
    );

    // Clock generation: 100 MHz (10 ns period)
    always #5 clk = ~clk;

    initial begin
        // Dump waves
        $dumpfile("alu_8bit.vcd");
        $dumpvars(0, tb_alu_8bit);

        // Initialize
        clk     = 0;
        rst     = 1;
        A       = 0;
        B       = 0;
        ALU_Sel = 0;
        Cin     = 0;

        #20;
        rst = 0;

        // ---------------------------
        // ADD
        // ---------------------------
        ALU_Sel = 3'b000;
        A = 8'd10; B = 8'd5; Cin = 0;
        #10;

        A = 8'd200; B = 8'd100; Cin = 0;
        #10;

        // ---------------------------
        // SUB
        // ---------------------------
        ALU_Sel = 3'b001;
        A = 8'd50; B = 8'd20;
        #10;

        A = 8'd20; B = 8'd50;
        #10;

        // ---------------------------
        // AND
        // ---------------------------
        ALU_Sel = 3'b010;
        A = 8'hAA; B = 8'h0F;
        #10;

        // ---------------------------
        // OR
        // ---------------------------
        ALU_Sel = 3'b011;
        A = 8'h55; B = 8'h0F;
        #10;

        // ---------------------------
        // XOR
        // ---------------------------
        ALU_Sel = 3'b100;
        A = 8'hFF; B = 8'h0F;
        #10;

        // ---------------------------
        // NOT
        // ---------------------------
        ALU_Sel = 3'b101;
        A = 8'h0F;
        #10;

        // ---------------------------
        // SHIFT LEFT
        // ---------------------------
        ALU_Sel = 3'b110;
        A = 8'b1001_0001;
        #10;

        // ---------------------------
        // SHIFT RIGHT
        // ---------------------------
        ALU_Sel = 3'b111;
        A = 8'b1001_0001;
        #10;

        #20;
        $finish;
    end

endmodule

