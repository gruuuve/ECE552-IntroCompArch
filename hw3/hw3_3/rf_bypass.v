/* $Author: karu $ */
/* $LastChangedDate: 2009-03-04 23:09:45 -0600 (Wed, 04 Mar 2009) $ */
/* $Rev: 45 $ */
module rf_bypass (
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

   output [15:0] read1data;
   output [15:0] read2data;
   output        err;

   wire [15:0] read1, read2;
   //instantiate rf module
   rf rf0(.read1data(read1), .read2data(read2), .err(err), .write(write), .writedata(writedata),
	  .writeregsel(writeregsel), .read1regsel(read1regsel), .read2regsel(read2regsel), 
          .clk(clk), .rst(rst)); 

   //bypass logic
   assign read1data = ((read1regsel == writeregsel) & write)? writedata : read1;
   assign read2data = ((read2regsel == writeregsel) & write)? writedata : read2;

endmodule
// DUMMY LINE FOR REV CONTROL :1:
