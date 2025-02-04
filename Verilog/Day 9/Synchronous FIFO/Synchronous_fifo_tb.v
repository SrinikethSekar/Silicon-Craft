
module fif0_sync_tb;
  parameter FIFO_DEPTH = 8;
  parameter DATA_WIDTH = 32;
  
  reg clk = 0;
  reg rst;
  reg cs;
  reg wr_en;
  reg rd_en;
  reg [DATA_WIDTH-1:0] data_in;
  wire [DATA_WIDTH-1:0] data_out;
  wire empty;
  wire full;
  
  // Corrected module instantiation
  fif0_sync #(.FIFO_DEPTH(FIFO_DEPTH), .DATA_WIDTH(DATA_WIDTH)) uut (  
                .clk(clk),
                .rst(rst),
                .cs(cs),
                .wr_en(wr_en),
                .rd_en(rd_en),
                .data_in(data_in),
                .data_out(data_out),
                .empty(empty),
                .full(full)
  );
  
  always #5 clk = ~clk;  // Clock toggling every 5 time units
  
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end

  // **Task for Write Operation**
  task write_data(input [DATA_WIDTH-1:0] d_in);
    begin
      @(posedge clk);
      cs = 1; wr_en = 1;
      data_in = d_in;
      $display($time, " write_data data_in = %0d", data_in);
      @(posedge clk);
      cs = 1; wr_en = 0;
    end
  endtask

  // **Task for Read Operation**
  task read_data();
    begin
      cs = 1; rd_en = 1;
      @(posedge clk);
      $display($time, " read_data data_out = %0d", data_out);
      cs = 0; rd_en = 0;
    end
  endtask

  integer i;

  // **Simulation Sequence**
  initial begin
    #1;
    rst = 0; rd_en = 0; wr_en = 0;

    @(posedge clk) rst = 1;  // Reset high

    $display($time, "\n SCENARIO 1");
    write_data(1);
    write_data(10);
    write_data(100);

    read_data();
    read_data();
    read_data();

    $display($time, "\n SCENARIO 2");
    for (i = 0; i < FIFO_DEPTH; i = i + 1) begin
      write_data(2 ** i);
      read_data();
    end

    $display($time, "\n SCENARIO 3");
    for (i = 0; i < FIFO_DEPTH; i = i + 1) begin
      write_data(2 ** i);
    end

    $display($time, "\n SCENARIO 4");
    for (i = 0; i < FIFO_DEPTH; i = i + 1) begin
      read_data();
    end

    #50;
    $finish;
  end
endmodule
