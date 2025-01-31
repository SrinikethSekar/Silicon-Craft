
module top_module( 
    input [254:0] in,
    output [7:0] out );

    reg [7:0] count; //save the input through a register file
    integer i;
    always @(*) begin
        count = 8'b0;  // Reset count
        for (i = 0; i < 255; i = i + 1) begin// iteration for 255
            if (in[i]) begin
                count = count + 1;
            end
        end
    end

    assign out = count;

endmodule
