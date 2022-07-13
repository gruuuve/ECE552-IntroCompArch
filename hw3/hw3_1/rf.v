/* $Author: karu $ */
/* $LastChangedDate: 2009-03-04 23:09:45 -0600 (Wed, 04 Mar 2009) $ */
/* $Rev: 45 $ */
module rf (
           // Outputs
           read1data, read2data, err,
           // Inputs
           clk, rst, read1regsel, read2regsel, writeregsel, writedata, write
           );
   input clk, rst;
   input [2:0] read1regsel;
   input [2:0] read2regsel;
   input [2:0] writeregsel;
   input [15:0] writedata;
   input        write;

   output reg [15:0] read1data;
   output reg [15:0] read2data;
   output reg err;

   //signal/control wires
   wire [15:0]reg_out[7:0];
   reg [15:0]reg_in[7:0];
   reg [7:0] wr;

   //instantiate 8 registers
   reg_16 reg0 (.d(reg_in[0]), .q(reg_out[0]), .wr(wr[0]), .clk(clk), .rst(rst));
   reg_16 reg1 (.d(reg_in[1]), .q(reg_out[1]), .wr(wr[1]), .clk(clk), .rst(rst));
   reg_16 reg2 (.d(reg_in[2]), .q(reg_out[2]), .wr(wr[2]), .clk(clk), .rst(rst));
   reg_16 reg3 (.d(reg_in[3]), .q(reg_out[3]), .wr(wr[3]), .clk(clk), .rst(rst));
   reg_16 reg4 (.d(reg_in[4]), .q(reg_out[4]), .wr(wr[4]), .clk(clk), .rst(rst));
   reg_16 reg5 (.d(reg_in[5]), .q(reg_out[5]), .wr(wr[5]), .clk(clk), .rst(rst));
   reg_16 reg6 (.d(reg_in[6]), .q(reg_out[6]), .wr(wr[6]), .clk(clk), .rst(rst));
   reg_16 reg7 (.d(reg_in[7]), .q(reg_out[7]), .wr(wr[7]), .clk(clk), .rst(rst));

//   assign newdata = rst? 16'b0000000000000000 : writedata;

   

   //read1 select case
   always @(*)
   begin
       case(read1regsel)
	   3'b000:
	       begin
		   read1data = reg_out[0];
		   err = 1'b0;
	       end
	   3'b001:
		begin
		   read1data = reg_out[1];
	           err = 1'b0;
	        end
           3'b010:
  		begin
     		   read1data = reg_out[2];
		   err = 1'b0;
 		end
	   3'b011:
  	       begin
     		   read1data = reg_out[3];
		   err = 1'b0;
               end
           3'b100:
               begin
                   read1data = reg_out[4];
                   err = 1'b0;
               end
           3'b101:
               begin
                   read1data = reg_out[5];
                   err = 1'b0;
               end
           3'b110:
                begin
                    read1data = reg_out[6];
                    err = 1'b0;
                end
           3'b111:
                begin
                    read1data = reg_out[7];
                    err = 1'b0;
                end
           default:
                begin
                    err = 1'b1;
                end
       endcase		
   end

   //read2 select case
   always @(*)
   begin
       case(read2regsel)
           3'b000:
               begin
                   read2data = reg_out[0];
                   err = 1'b0;
               end
           3'b001:
                begin
                   read2data = reg_out[1];
                   err = 1'b0;
                end
           3'b010:
                begin
                   read2data = reg_out[2];
                   err = 1'b0;
                end
           3'b011:
               begin
                   read2data = reg_out[3];
                   err = 1'b0;
               end
           3'b100:
               begin
                   read2data = reg_out[4];
                   err = 1'b0;
               end
           3'b101:
               begin
                   read2data = reg_out[5];
                   err = 1'b0;
               end
           3'b110:
               begin
                   read2data = reg_out[6];
                   err = 1'b0;
               end
           3'b111:
               begin
                   read2data = reg_out[7];
                   err = 1'b0;
               end
           default:
               begin
		   read2data = read2data;
                   err = 1'b1;
               end
       endcase
   end


   //write case select statements
   always @(writeregsel, write, writedata)
   begin
       case(writeregsel)
           3'b000:
	       begin
		   reg_in[0] = writedata;
		   wr[0] = write ? 1'b1 : 1'b0;
		   wr[1] = 1'b0;
		   wr[2] = 1'b0;
                   wr[3] = 1'b0;
                   wr[4] = 1'b0;
		   wr[5] = 1'b0;
                   wr[6] = 1'b0;
                   wr[7] = 1'b0;
		   err = 1'b0;
	       end
	   3'b001:
	       begin
		   reg_in[1] = writedata;
		   wr[1] = write ? 1'b1 : 1'b0;
                   wr[0] = 1'b0;
                   wr[2] = 1'b0;
                   wr[3] = 1'b0;
                   wr[4] = 1'b0;
                   wr[5] = 1'b0;
                   wr[6] = 1'b0;
                   wr[7] = 1'b0;
		   err = 1'b0;
	       end
	   3'b010:
	       begin
		   reg_in[2] = writedata;
		   wr[2] = write ? 1'b1 : 1'b0;
                   wr[1] = 1'b0;
                   wr[0] = 1'b0;
                   wr[3] = 1'b0;
                   wr[4] = 1'b0;
                   wr[5] = 1'b0;
                   wr[6] = 1'b0;
                   wr[7] = 1'b0;
		   err = 1'b0;
	       end
	   3'b011:
	       begin
		   reg_in[3] = writedata;
		   wr[3] = write ? 1'b1 : 1'b0;
                   wr[1] = 1'b0;
                   wr[2] = 1'b0;
                   wr[0] = 1'b0;
                   wr[4] = 1'b0;
                   wr[5] = 1'b0;
                   wr[6] = 1'b0;
                   wr[7] = 1'b0;
		   err = 1'b0;
	       end
	   3'b100:
	       begin
		   reg_in[4] = writedata;
		   wr[4] = write ? 1'b1 : 1'b0;
                   wr[1] = 1'b0;
                   wr[2] = 1'b0;
                   wr[3] = 1'b0;
                   wr[0] = 1'b0;
                   wr[5] = 1'b0;
                   wr[6] = 1'b0;
                   wr[7] = 1'b0;
		   err = 1'b0;
	       end
	   3'b101:
	       begin
		   reg_in[5] = writedata;
		   wr[5] = write ? 1'b1 : 1'b0;
                   wr[1] = 1'b0;
                   wr[2] = 1'b0;
                   wr[3] = 1'b0;
                   wr[4] = 1'b0;
                   wr[0] = 1'b0;
                   wr[6] = 1'b0;
                   wr[7] = 1'b0;
		   err = 1'b0;
	       end
	   3'b110:
	       begin
		   reg_in[6] = writedata;
		   wr[6] = write ? 1'b1 : 1'b0;
                   wr[1] = 1'b0;
                   wr[2] = 1'b0;
                   wr[3] = 1'b0;
                   wr[4] = 1'b0;
                   wr[5] = 1'b0;
                   wr[0] = 1'b0;
                   wr[7] = 1'b0;
		   err = 1'b0;
	       end
	   3'b111:
               begin
		   reg_in[7] = writedata;
		   wr[7] = write ? 1'b1 : 1'b0;
                   wr[1] = 1'b0;
                   wr[2] = 1'b0;
                   wr[3] = 1'b0;
                   wr[4] = 1'b0;
                   wr[5] = 1'b0;
                   wr[6] = 1'b0;
                   wr[0] = 1'b0;
		   err = 1'b0;
	       end
	   default:
	       begin
		   wr = 8'b00000000;
		   err = 1'b1;
	       end
       endcase
   end
		   
endmodule
// DUMMY LINE FOR REV CONTROL :1:
