module d_out(rd_reg0, rd_reg1, rd_reg2, rd_reg3, rd_ptr_curr, clk, rst, data_out, err);

    input [63:0] rd_reg0, rd_reg1, rd_reg2, rd_reg3;
    input [2:0] rd_ptr_curr;
    input clk, rst;

    output reg [63:0] data_out;
    output reg err;
   
    //reg [63:0] data_out_new;    
	
	//dff d_out_ff[63:0](.clk(clk), .rst(rst), .d(data_out_new), .q(data_out));
	
    always @(*) begin
	    err = 1'b0;
	    data_out = data_out;
        case(rd_ptr_curr[1:0]) 
            2'b00: begin
	        data_out = rd_reg0;
	    end
	    2'b01: begin
	        data_out = rd_reg1;
	    end
	    2'b10: begin
	        data_out = rd_reg2;
	    end
	    2'b11: begin
	        data_out = rd_reg3;
	    end
	    default: begin
	        data_out = 64'bx;
		err = 1'b1;
	    end
	endcase
     end

endmodule

