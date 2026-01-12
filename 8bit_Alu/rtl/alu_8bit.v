module alu_8bit (
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] ALU_Sel,
    input        Cin,

    output reg [7:0] Result,
    output reg       Cout,
    output reg       Zero,
    output reg       Negative,
    output reg       Overflow
);

    // Internal signals
    reg [8:0] sum;
    reg [8:0] diff;

    always @(*) begin
        // Defaults (important to avoid latches)
        Result   = 8'b0;
        Cout     = 1'b0;
        Overflow = 1'b0;

        case (ALU_Sel)

            // ADD
            3'b000: begin
                sum     = {1'b0, A} + {1'b0, B} + Cin;
                Result  = sum[7:0];
                Cout    = sum[8];
                Overflow = (~(A[7] ^ B[7])) & (Result[7] ^ A[7]);
            end

            // SUB : A - B
            3'b001: begin
                diff    = {1'b0, A} - {1'b0, B};
                Result  = diff[7:0];
                Cout    = diff[8];
                Overflow = (A[7] ^ B[7]) & (Result[7] ^ A[7]);
            end

            // AND
            3'b010: begin
                Result = A & B;
            end

            // OR
            3'b011: begin
                Result = A | B;
            end

            // XOR
            3'b100: begin
                Result = A ^ B;
            end

            // NOT
            3'b101: begin
                Result = ~A;
            end

            // Shift Left
            3'b110: begin
                Result = A << 1;
                Cout   = A[7];
            end

            // Shift Right
            3'b111: begin
                Result = A >> 1;
                Cout   = A[0];
            end

            default: begin
                Result = 8'b0;
            end
        endcase

        // Flags
        Zero     = (Result == 8'b0);
        Negative = Result[7];

    end

endmodule

