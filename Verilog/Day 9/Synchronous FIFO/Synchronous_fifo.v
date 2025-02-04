
module fif0_sync #(parameter FIFO_DEPTH = 8,  
                   parameter DATA_WIDTH = 32)  

  (input clk,
   input rst,
   input cs,       // Chip Select
   input wr_en,    // Write Enable
   input rd_en,    // Read Enable
   input [DATA_WIDTH-1:0] data_in,
   output reg [DATA_WIDTH-1:0] data_out,
   output empty,
   output full);

  localparam FIFO_DEPTH_LOG = $clog2(FIFO_DEPTH);  // Number of bits required for addressing FIFO_DEPTH
  
  reg [DATA_WIDTH-1:0] fifo [0:FIFO_DEPTH-1];  // FIFO memory array
  reg [FIFO_DEPTH_LOG:0] write_pointer;
  reg [FIFO_DEPTH_LOG:0] read_pointer;

  // **Write Operation**
  always @(posedge clk or negedge rst) begin
    if (!rst)  
      write_pointer <= 0;
    else if (cs && wr_en && !full) begin  
      fifo[write_pointer[FIFO_DEPTH_LOG-1:0]] <= data_in;
      write_pointer <= write_pointer + 1'b1;
    end
  end

  // **Read Operation**
  always @(posedge clk or negedge rst) begin
    if (!rst)
      read_pointer <= 0;
    else if (cs && rd_en && !empty) begin  
      data_out <= fifo[read_pointer[FIFO_DEPTH_LOG-1:0]];  
      read_pointer <= read_pointer + 1'b1;
    end
  end

  // **Condition for Full and Empty**
  assign empty = (read_pointer == write_pointer);
  assign full  = (read_pointer == {~write_pointer[FIFO_DEPTH_LOG], write_pointer[FIFO_DEPTH_LOG-1:0]});
  
endmodule
