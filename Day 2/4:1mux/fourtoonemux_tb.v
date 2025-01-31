module fourtoonemux_tb();
reg [3:0]data_in;
reg [1:0]sel_in;
wire y_out;

fourtoonemux uut(.data_in(data_in),.sel_in(sel_in),.y_out(y_out));

initial 
begin
	$dumpfile("waves.vcd");
	$dumpvars();
end
integer i,j;
initial 
begin
	$monitor(" data_in=%b sel_in=%b  y_out=%b",data_in,sel_in,y_out);
data_in = 4'b0000; sel_in = 2'b00; #10;
data_in = 4'b1101; sel_in = 2'b01; #10;
data_in = 4'b1010; sel_in = 2'b10; #10;
data_in = 4'b1111; sel_in = 2'b11; #10;
	
	

$finish;
end
endmodule
