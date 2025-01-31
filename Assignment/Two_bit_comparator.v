module comparator_2bit(
    input [1:0] A,  // input A
    input [1:0] B,  // input B
    output A_eq_B,  //output equal
    output A_gt_B,  //output greater than
    output A_lt_B   //output less than
);
    
    assign A_eq_B = (A == B);  // Equality 

    assign A_gt_B = (A > B);    // Greater-than 

    assign A_lt_B = (A < B);    // Less-than 
endmodule
