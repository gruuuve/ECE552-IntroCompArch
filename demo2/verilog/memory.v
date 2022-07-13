module memory(clk, rst, dump, alu_out, wr_data, mem_rd, mem_wr, rd_data);

   input [15:0] alu_out, wr_data;
   input mem_rd, mem_wr, clk, rst, dump;

   output [15:0] rd_data;

   wire memRdWr;

   //want to enable whenever doing either op
   assign memRdWr = mem_wr | mem_rd;

   //data mem
   memory2c data_mem(.clk(clk), .rst(rst), .createdump(dump), .wr(mem_wr), .enable(memRdWr), 
	             .data_in(wr_data), .addr(alu_out), .data_out(rd_data)); 

endmodule
