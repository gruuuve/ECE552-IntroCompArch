/* $Author: karu $ */
/* $LastChangedDate: 2009-03-04 23:09:45 -0600 (Wed, 04 Mar 2009) $ */
/* $Rev: 45 $ */
module fifo(/*AUTOARG*/
   // Outputs
   data_out, fifo_empty, fifo_full, err,
   // Inputs
   data_in, data_in_valid, pop_fifo, clk, rst
   );
   input [63:0] data_in;
   input        data_in_valid;
   input        pop_fifo;
   input        clk;
   input        rst;

   output [63:0] data_out;
   output        fifo_empty;
   output        fifo_full;
   output        err;

   //your code here
   wire [3:0] wr_en;

   wire [63:0] rd_reg [3:0]; //4 64 bit wires
   //wire [63:0] wr_reg;

   wire [2:0] rd_ptr_in, rd_ptr_out,wr_ptr_in, wr_ptr_out; //extra bit added for full/empty condition
   //wire empty_in, full_in;
   wire err1, err2, err3, err4, err_in;
   wire ptr_eq;

   //outputs only change on rising edge
   //instantiate output flops except for data_out
   //dff full_ff(.d(full_in), .clk(clk), .rst(rst), .q(fifo_full));
   //dff empty_ff(.d(empty_in), .clk(clk), .rst(rst), .q(fifo_empty));
   dff err_ff(.d(err_in), .clk(clk), .rst(rst), .q(err));

   //4 64 bit data registers
   reg_16 #(64) fifo0(.clk(clk), .rst(rst), .wr(wr_en[0]), .in(data_in), .out(rd_reg[0]));
   reg_16 #(64) fifo1(.clk(clk), .rst(rst), .wr(wr_en[1]), .in(data_in), .out(rd_reg[1]));
   reg_16 #(64) fifo2(.clk(clk), .rst(rst), .wr(wr_en[2]), .in(data_in), .out(rd_reg[2]));
   reg_16 #(64) fifo3(.clk(clk), .rst(rst), .wr(wr_en[3]), .in(data_in), .out(rd_reg[3]));


   // pointer registers
   reg_16 #(3) rd_ptr(.clk(clk), .rst(rst), .wr(1'b1), .in(rd_ptr_in), .out(rd_ptr_out));
   reg_16 #(3) wr_ptr(.clk(clk), .rst(rst), .wr(1'b1), .in(wr_ptr_in), .out(wr_ptr_out));

   // pointer update logic
   wr_ptr wr_ptr_mod(.wr_ptr_curr(wr_ptr_out), .valid(data_in_valid), .full(fifo_full), 
	  .wr_ptr_next(wr_ptr_in), .err(err1));

   rd_ptr rd_ptr_mod(.rd_ptr_curr(rd_ptr_out), .pop(pop_fifo), .empty(fifo_empty), 
	  .rd_ptr_next(rd_ptr_in), .err(err2));

   //write enable the corresponding register
   wr_enable wr_en_mod(.valid(data_in_valid), .full(fifo_full), .wr_ptr_curr(wr_ptr_out), 
	           .wr_en(wr_en), .err(err3));

   //data out module
   d_out d_out_mod(.rd_reg0(rd_reg[0]), .rd_reg1(rd_reg[1]), .rd_reg2(rd_reg[2]), 
	           .rd_reg3(rd_reg[3]) , .rd_ptr_curr(rd_ptr_out), .clk(clk), .rst(rst),
	           .data_out(data_out), .err(err4));   

   // empty and full flag logic
   assign ptr_eq = rd_ptr_out[1:0] == wr_ptr_out[1:0];
   assign fifo_full = (ptr_eq & (rd_ptr_out[2] != wr_ptr_out[2])) ? 1'b1 : 1'b0;

   assign fifo_empty = (rd_ptr_out == wr_ptr_out) ? 1'b1 : 1'b0;

   //errors
   assign err_in = err1 | err2 | err3 | err4;

endmodule
// DUMMY LINE FOR REV CONTROL :1:
