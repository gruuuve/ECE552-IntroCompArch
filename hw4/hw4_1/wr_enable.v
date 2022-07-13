module wr_enable(valid, full, wr_ptr_curr, wr_en, err);

    input [2:0] wr_ptr_curr;
    input valid, full;

    output reg [3:0] wr_en;
    output reg err;

    wire enable;
	
	assign enable = valid & !full;
    
    always @(*) begin
	    err = 1'b0;
	    wr_en = 4'b0000;
        case({enable, wr_ptr_curr[1:0]}) 
            3'b000: begin //do nothing until 1xx (en high)
	    end
	    3'b001: begin
	    end
	    3'b010: begin
	    end
	    3'b011: begin
	    end
	    3'b100: begin
		    wr_en[0] = 1'b1;
	    end
	    3'b101: begin
	            wr_en[1] = 1'b1;
 	    end
	    3'b110: begin
	            wr_en[2] = 1'b1;
    	    end
	    3'b111: begin
		    wr_en[3] = 1'b1;
	    end
	    default: begin
		    wr_en = 4'bxxx;
	  	    err = 1'b1;
	    end
	endcase
    end

endmodule
