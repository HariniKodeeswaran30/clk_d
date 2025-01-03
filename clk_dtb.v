
module clk_dtb;

    reg clk;
    reg en;
    wire gated_clk;

    clk_d uut (
        .clk(clk),
        .en(en),
        .gated_clk(gated_clk)
    );

    initial begin
        
        clk = 0;
        en = 0;
        #10 en = 0;
        #10 en = 1;
        #20 en = 0;
        #10 en = 1;
        
        #20 $finish;
    end

    always #5 clk = ~clk;

endmodule


