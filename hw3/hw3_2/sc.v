/* $Author: karu $ */
/* $LastChangedDate: 2009-03-04 23:09:45 -0600 (Wed, 04 Mar 2009) $ */
/* $Rev: 45 $ */

module sc( clk, rst, ctr_rst, out, err);
   input clk;
   input rst;
   input ctr_rst;
   output [2:0] out;
   output reg err;

   reg [2:0] reg_in;
   wire t_rst;

   assign t_rst = ctr_rst | rst;
   // instantiate 3 registers
   dff ff[2:0] (.q(out), .d(reg_in), .clk(clk), .rst(t_rst));

   always @(out)
   begin
       case(out)
	   3'b000:
	   begin
	       reg_in = 3'b001;
	       err = 1'b0;
           end
	   3'b001:
           begin
	       reg_in = 3'b010;
	       err = 1'b0;
	   end
	   3'b010:
           begin
	       reg_in = 3'b011;
               err = 1'b0;
	   end
	   3'b011:
	   begin
	       reg_in = 3'b100;
               err = 1'b0;
	   end
	   3'b100:
	   begin
	       reg_in = 3'b101;
               err = 1'b0;
	   end
	   3'b101:
           begin
	       reg_in = 3'b101;
               err = 1'b0;
	   end
	   default:
	   begin
	       reg_in = 3'bxxx;
               err = 1'b1;
	   end
       endcase
   end 


endmodule

// DUMMY LINE FOR REV CONTROL :1:
