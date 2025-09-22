module ripple_carry_adder #(
    parameter N = 4   // default 4-bit adder
)(
    input  logic [N-1:0] A, B,
    input  logic         Cin,
    output logic [N-1:0] Sum,
    output logic         Cout
);

    logic [N:0] carry;   // internal carry chain

    assign carry[0] = Cin;  // initial carry input

    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : adder_stage
            full_adder FA (
                .a    (A[i]),
                .b    (B[i]),
                .cin  (carry[i]),
                .sum  (Sum[i]),
                .cout (carry[i+1])
            );
        end
    endgenerate

    assign Cout = carry[N];  // final carry-out

endmodule
Last login: Mon Sep 22 23:23:30 on ttys000
);

    logic [N:0] carry;   // internal carry chain

    assign carry[0] = Cin;  // initial carry input

    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : adder_stage
            full_adder FA (
                .a    (A[i]),
                .b    (B[i]),
                .cin  (carry[i]),
                .sum  (Sum[i]),
                .cout (carry[i+1])
            );
        end
    endgenerate

    assign Cout = carry[N];  // final carry-out

endmodule

