
module clk_d (
    input  wire clk,
    input  wire en,
    output wire gated_clk
);

    reg latch1, latch2;

    always @(negedge clk) begin
        latch1 <= en;
    end

    always @(posedge clk) begin
        latch2 <= latch1;
    end

    assign gated_clk = clk & latch2;

endmodule

