module rd_ptr(rd_ptr_curr, pop, empty, rd_ptr_next, err);

    input [2:0] rd_ptr_curr;
    input pop, empty;
	
    output reg [2:0] rd_ptr_next;
    output reg err;
    
    wire [2:0] ptr_add1;
    wire cout0, cout1;
	 
    //pointer adder
    fulladder fa0(.A(rd_ptr_curr[0]), .B(1'b1), .Cin(1'b0), .S(ptr_add1[0]), .Cout(cout0));
    fulladder fa1(.A(rd_ptr_curr[1]), .B(1'b0), .Cin(cout0), .S(ptr_add1[1]), .Cout(cout1));
    fulladder fa2(.A(rd_ptr_curr[2]), .B(1'b0), .Cin(cout1), .S(ptr_add1[2]), .Cout());
	
    always @(*) begin
	rd_ptr_next = rd_ptr_curr; //generic keep same value
	err = 1'b0;
	case({empty, pop})
		2'b00: begin
		end //do nothing
		2'b01: begin //increment read pointer
		    rd_ptr_next = ptr_add1;
		end
		2'b10: begin //do nothing
		end
		2'b11: begin //do nothing
		end
		default: begin
		    err = 1'b1;
		    rd_ptr_next = 3'bxxx;
   		end
        endcase
    end
	
endmodule
