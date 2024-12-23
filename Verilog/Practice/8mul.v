module mux(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,x);
input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
output x;
wire s0out,s1out,s2out,io0,io1,io2,io3,io4,io5,io6,io7;
not (s0out,s0);
not (s1out,s1); not (s2out,s2);
and (io0,i0,s2out,s1out,s0out);
and (io1,i1,s2out,s1out,s0);
and (io2,i2,s2out,s1,s0out);
and (io3,i3,s2out,s1,s0);
and (io4,i4,s2,s1out,s0out);
and (io5,i5,s2,s1out,s0);
and (io6,i6,s2,s1,s0out);
and (io7,i7,s2,s1,s0);
or (x, io0,io1,io2,io3,io4,io5,io6,io7);
endmodule

module mux_tb;
    reg i0, i1, i2, i3, i4, i5, i6, i7; // Inputs
    reg s0, s1, s2;                     // Select signals
    wire x;                             // Output

    // Instantiate the MUX module
    mux uut (
        .i0(i0), .i1(i1), .i2(i2), .i3(i3),
        .i4(i4), .i5(i5), .i6(i6), .i7(i7),
        .s0(s0), .s1(s1), .s2(s2), 
        .x(x)
    );

    initial begin
        $dumpfile("mux_tb.vcd"); // For GTKWave
        $dumpvars(0, mux_tb);    // Dump all variables in the testbench

        // Initialize inputs
        {i0, i1, i2, i3, i4, i5, i6, i7} = 8'b00000001; // Set only i0 to 1
        s0 = 0; s1 = 0; s2 = 0;                         // Select i0
        #10; // Wait for 10 time units

        {i0, i1, i2, i3, i4, i5, i6, i7} = 8'b00000010; // Set only i1 to 1
        s0 = 1; s1 = 0; s2 = 0;                         // Select i1
        #10; // Wait for 10 time units

        {i0, i1, i2, i3, i4, i5, i6, i7} = 8'b00000100; // Set only i2 to 1
        s0 = 0; s1 = 1; s2 = 0;                         // Select i2
        #10; // Wait for 10 time units

        {i0, i1, i2, i3, i4, i5, i6, i7} = 8'b00001000; // Set only i3 to 1
        s0 = 1; s1 = 1; s2 = 0;                         // Select i3
        #10; // Wait for 10 time units

        // Test all inputs for various select signal combinations
        {i0, i1, i2, i3, i4, i5, i6, i7} = 8'b00010000; // Set only i4 to 1
        s0 = 0; s1 = 0; s2 = 1;                         // Select i4
        #10; // Wait for 10 time units

        {i0, i1, i2, i3, i4, i5, i6, i7} = 8'b00100000; // Set only i5 to 1
        s0 = 1; s1 = 0; s2 = 1;                         // Select i5
        #10;

        {i0, i1, i2, i3, i4, i5, i6, i7} = 8'b01000000; // Set only i6 to 1
        s0 = 0; s1 = 1; s2 = 1;                         // Select i6
        #10;

        {i0, i1, i2, i3, i4, i5, i6, i7} = 8'b10000000; // Set only i7 to 1
        s0 = 1; s1 = 1; s2 = 1;                         // Select i7
        #10;

        $finish; // End the simulation
    end
endmodule

