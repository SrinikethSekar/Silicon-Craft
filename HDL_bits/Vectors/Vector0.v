module top_module(
	input [2:0] vec, 
	output [2:0] outv,
	output o2,
	output o1,
	output o0
);
	
	assign outv = vec;   
	assign o0 = vec[0];  //first bit
	assign o1 = vec[1];  //second bit
	assign o2 = vec[2];  //third bit
	
endmodule
