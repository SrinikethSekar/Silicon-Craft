module top_module (
	input [31:0] in,
	output [31:0] out
);

	assign out[31:24] = in[ 7: 0];	
	assign out[23:16] = in[15: 8];	
	assign out[15: 8] = in[23:16];	
	assign out[ 7: 0] = in[31:24];	
	
endmodule

//Based on the given parameters, the bit is divided into four 8 parts and that need to be printed in reverse order.

//First 8 bit need to be reverse in the last and last 8 bit need to be reverse to the first
