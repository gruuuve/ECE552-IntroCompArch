module wr_ptr(wr_ptr_curr, valid, full, wr_ptr_next, err);

    input [2:0] wr_ptr_curr;
    input valid, full;
	
    output reg [2:0] wr_ptr_next;
    output reg err;
    
    wire [2:0] ptr_add1;
    wire cout0, cout1;
	 
    //pointer adder
    fulladder fa0(.A(wr_ptr_curr[0]), .B(1'b1), .Cin(1'b0), .S(ptr_add1[0]), .Cout(cout0));
    fulladder fa1(.A(wr_ptr_curr[1]), .B(1'b0), .Cin(cout0), .S(ptr_add1[1]), .Cout(cout1));
    fulladder fa2(.A(wr_ptr_curr[2]), .B(1'b0), .Cin(cout1), .S(ptr_add1[2]), .Cout());
 	
    always @(*) begin
        wr_ptr_next = wr_ptr_curr; //generic keep same value
	err = 1'b0;
        case({full, valid})
  	    2'b00: begin
	    end //do nothing
            2'b01: begin //increment read pointer
		wr_ptr_next = ptr_add1;
	    end
   	    2'b10: begin //do nothing
 	    end
	    2'b11: begin //do nothing
	    end
	    default: begin
	        err = 1'b1;
	  	wr_ptr_next = 3'bxxx;
	    end
	endcase
    end
	
endmodule
