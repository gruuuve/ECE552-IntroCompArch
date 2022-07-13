/* $Author: karu $ */
/* $LastChangedDate: 2009-04-24 09:28:13 -0500 (Fri, 24 Apr 2009) $ */
/* $Rev: 77 $ */

module mem_system(/*AUTOARG*/
   // Outputs
   DataOut, Done, Stall, CacheHit, err,
   // Inputs
   Addr, DataIn, Rd, Wr, createdump, clk, rst
   );
   
   input [15:0] Addr;
   input [15:0] DataIn;
   input        Rd;
   input        Wr;
   input        createdump;
   input        clk;
   input        rst;
   
   output [15:0] DataOut;
   output reg Done; //edited to make type reg
   output reg Stall;
   output reg CacheHit;
   output err;


   //Direct Cache: Carly Zlabek
   
   //states
   wire [4:0] curr_state; //23 states
   reg [4:0] next_state; // used my fsm and the ref. one together to fix bugs

   localparam [4:0] IDLE = 5'h00, 
	            RDCOMP = 5'h01,
		    WRCOMP = 5'h02,
		    WRB0 = 5'h03,
		    WRB1 = 5'h04,
		    WRB2 = 5'h05,
		    WRB3 = 5'h06,
		    MEMRD0 = 5'h07,
		    MEMRD1 = 5'h08,
		    MEMRD2 = 5'h09,
		    MEMRD3 = 5'h0A,
		    WAIT0 = 5'h0B,
		    WAIT1 = 5'h0C,
		    WAIT2 = 5'h0D,
		    WAIT3 = 5'h0E,
		    CACHEST0 = 5'h0F,
		    CACHEST1 = 5'h10,
		    CACHEST2 = 5'h11,
		    CACHEST3 = 5'h12,
		    MEMWR = 5'h13,
		    STDONE = 5'h14,
		    DONE = 5'h15,
		    ERR = 5'h16; //ERR state is default in the fsm case

   // I/O wires and regs
   reg [15:0] cache_addr, mem_data_in, cache_data_in;
   reg [4:0] mem_tag;
   reg [2:0] mem_offset;
   reg en, comp, cache_wr, mem_rd, mem_wr;

   wire [15:0] mem_addr, mem_data_out;
   wire [4:0] tag_out;
   wire [3:0] busy;
   wire mem_stall, valid, dirty, hit;
   wire cache_err, mem_err;

   /* data_mem = 1, inst_mem = 0 *
    * needed for cache parameter */
   parameter memtype = 0;
   cache #(0 + memtype) c0(// Outputs
                          .tag_out              (tag_out),
                          .data_out             (DataOut),
                          .hit                  (hit),
                          .dirty                (dirty),
                          .valid                (valid),
                          .err                  (cache_err),
                          // Inputs
                          .enable               (en),
                          .clk                  (clk),
                          .rst                  (rst),
                          .createdump           (createdump),
                          .tag_in               (cache_addr[15:11]),
                          .index                (cache_addr[10:3]),
                          .offset               (cache_addr[2:0]),
                          .data_in              (cache_data_in),
                          .comp                 (comp),
                          .write                (cache_wr),
                          .valid_in             (1'b1));

   four_bank_mem mem(// Outputs
                     .data_out          (mem_data_out),
                     .stall             (mem_stall),
                     .busy              (busy),
                     .err               (mem_err),
                     // Inputs
                     .clk               (clk),
                     .rst               (rst),
                     .createdump        (createdump),
                     .addr              (mem_addr),
                     .data_in           (mem_data_in),
                     .wr                (mem_wr),
                     .rd                (mem_rd));
   
   // your code here (wires and states instantiated above)
   
   // state dff
   dff state_ff[4:0] (.d(next_state), .clk(clk), .rst(rst), .q(curr_state));
   
   assign mem_addr = {mem_tag, cache_addr[10:3], mem_offset};
   assign err = mem_err | cache_err;

   //fsm state logic
   always @(*) begin
      comp = 1'b0;
      en = 1'b0;
      Done = 1'b0;
      Stall = 1'b1;
      CacheHit = 1'b0;
      cache_wr = 1'b0;
      cache_addr = Addr;
      cache_data_in = DataIn;
      mem_tag = Addr[15:11];
      mem_offset = 3'b000;
      mem_data_in = DataOut;
      mem_rd = 1'b0;
      mem_wr = 1'b0;

      case(curr_state)
	 IDLE: begin
	         en = 1'b1;
	         Stall = 1'b0; 
	         //stay in idle if no rd or wr, if wr->compwr, if rd->comprd, if
	         //both then error occurred
	         next_state = ~(Rd | Wr) ? IDLE : (Wr & ~Rd) ? WRCOMP : (~Wr & Rd) ? RDCOMP : ERR;
	 end
	 WRCOMP: begin
		 en = 1'b1;
		 comp = 1'b1;
		 cache_wr = 1'b1;
		 next_state = (valid & hit) ? DONE : ~dirty ? MEMRD0 : WRB0; 
	 end
	 RDCOMP: begin
		 en = 1'b1;
		 comp = 1'b1;
		 next_state = (valid & hit) ? DONE : ~dirty ? MEMRD0 : WRB0;
	 end
	 WRB0: begin
		 en = 1'b1;
		 mem_wr = 1'b1; //mem_offset = 3'b000
		 mem_tag = tag_out;
		 cache_addr = {Addr[15:3], 3'b000};
		 next_state = mem_stall ? WRB0 : WRB1;
	 end
	 WRB1: begin
		 en = 1'b1;
		 mem_wr = 1'b1;
		 mem_offset = 3'b010;
		 mem_tag = tag_out;
		 cache_addr = {Addr[15:3], 3'b010};
		 next_state = mem_stall ? WRB1 : WRB2;
	 end
	 WRB2: begin
		 en = 1'b1;
		 mem_wr = 1'b1;
		 mem_offset = 3'b100;
		 mem_tag = tag_out;
		 cache_addr = {Addr[15:3], 3'b100};
		 next_state = mem_stall ? WRB2 : WRB3;
	 end
	 WRB3: begin
		 en = 1'b1;
		 mem_wr = 1'b1;
		 mem_offset = 3'b110;
		 mem_tag = tag_out;
		 cache_addr = {Addr[15:3], 3'b110};
		 next_state = mem_stall ? WRB3 : MEMRD0;
	 end
	 MEMRD0: begin
		 mem_rd = 1'b1;
		 next_state = mem_stall ? MEMRD0 : WAIT0;
	 end
	 MEMRD1: begin
		 mem_rd = 1'b1;
		 mem_offset = 3'b010;
		 next_state = mem_stall ? MEMRD1 : WAIT1;
	 end
	 MEMRD2: begin
		 mem_rd = 1'b1;
		 mem_offset = 3'b100;
		 next_state = mem_stall ? MEMRD2 : WAIT2;
	 end
	 MEMRD3: begin
		 mem_rd = 1'b1;
		 mem_offset = 3'b110;
		 next_state = mem_stall ? MEMRD3 : WAIT3;
	 end
	 WAIT0: begin
		 mem_rd = 1'b1;
		 next_state = CACHEST0;
	 end
	 WAIT1: begin
		 mem_rd = 1'b1;
		 next_state = CACHEST1;
	 end
	 WAIT2: begin
		 mem_rd = 1'b1;
		 next_state = CACHEST2;
	 end
	 WAIT3: begin
		 mem_rd = 1'b1;
		 next_state = CACHEST3;
	 end
	 CACHEST0: begin
		 en = 1'b1;
		 cache_wr = 1'b1;//use default mem_offset
		 cache_addr = {Addr[15:3], 3'b000};
		 cache_data_in = mem_data_out;
		 next_state = MEMRD1;
	 end
	 CACHEST1: begin
		 en = 1'b1;
		 cache_wr = 1'b1;
		 cache_addr = {Addr[15:3], 3'b010};
		 cache_data_in = mem_data_out;
		 mem_offset = 3'b010;
		 next_state = MEMRD2;
	 end
	 CACHEST2: begin
		 en = 1'b1;
		 cache_wr = 1'b1;
		 cache_addr = {Addr[15:3], 3'b100};
		 cache_data_in = mem_data_out;
		 mem_offset = 3'b100;
		 next_state = MEMRD3;	
	 end
	 CACHEST3: begin
		 en = 1'b1;
		 cache_wr = 1'b1;
		 cache_addr = {Addr[15:3], 3'b110};
		 cache_data_in = mem_data_out;
		 mem_offset = 3'b110;
		 next_state = (Wr & ~Rd) ? MEMWR : STDONE;
	 end
	 MEMWR: begin
		 en = 1'b1;
		 comp = 1'b1;
		 cache_wr = 1'b1;
		 next_state = STDONE;
	 end
	 STDONE: begin
		 en = 1'b1;
		 Done = 1'b1;
		 Stall = 1'b0;
		 next_state = (Wr & ~Rd) ? WRCOMP : (~Wr & Rd) ? RDCOMP : IDLE;
	 end
	 DONE: begin
		 en = 1'b1;
		 Done = 1'b1;
		 CacheHit = 1'b1;
		 Stall = 1'b0;
		 next_state = (Wr & ~Rd) ? WRCOMP : (~Wr & Rd) ? RDCOMP : IDLE;
	 end
	 default: begin //ERR
                 next_state = (Rd & Wr) ? ERR : IDLE;  
      	 end
      endcase
   end

endmodule // mem_system
// DUMMY LINE FOR REV CONTROL :9:
