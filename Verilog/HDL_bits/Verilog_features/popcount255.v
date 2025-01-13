integer i;
    always @(*) begin
        count = 8'b0;  // Reset count
        for (i = 0; i < 255; i = i + 1) begin
            if (in[i]) begin
                count = count + 1;
            end
        end
    end

    assign out = count;

endmodule
