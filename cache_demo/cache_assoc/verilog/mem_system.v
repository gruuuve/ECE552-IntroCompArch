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
   output reg Done;
   output reg Stall;
   output reg CacheHit;
   output err;

   //added wire instantiation
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
   reg en, comp, cache_wr, mem_rd, mem_wr, victim, invert_vic;

   wire [15:0] mem_addr, mem_data_out, cache_data_out_0, cache_data_out_1;
   wire [15:0] access_data, comp_data;
   wire [4:0] tag_out, tag_out_0, tag_out_1, access_tag, comp_tag;
   wire [3:0] busy;
   wire mem_stall, valid, valid_0, valid_1, dirty_0, dirty_1, hit, hit_0, hit_1;
   wire victim_way_in, victim_way_out, access_victim, victim_in;
   wire hit_valid_0, access_dirty, comp_dirty, cache_wr_0, cache_wr_1;
   wire cache_err_0, cache_err_1, mem_err;

   /* data_mem = 1, inst_mem = 0 *
    * needed for cache parameter */
   parameter memtype = 0;
   cache #(0 + memtype) c0(// Outputs
                          .tag_out              (tag_out_0),
                          .data_out             (cache_data_out_0),
                          .hit                  (hit_0),
                          .dirty                (dirty_0),
                          .valid                (valid_0),
                          .err                  (cache_err_0),
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
                          .write                (cache_wr_0),
                          .valid_in             (1'b1));
   cache #(2 + memtype) c1(// Outputs
                          .tag_out              (tag_out_1),
                          .data_out             (cache_data_out_1),
                          .hit                  (hit_1),
                          .dirty                (dirty_1),
                          .valid                (valid_1),
                          .err                  (cache_err_1),
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
                          .write                (cache_wr_1),
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
   
   // your code here
   // Associative Cache: Carly Zlabek

   // ffs
   dff state_ff[4:0] (.d(next_state), .clk(clk), .rst(rst), .q(curr_state));
   dff victim_ff(.d(victim_in), .clk(clk), .rst(rst), .q(access_victim));
   dff victim_way_ff(.d(victim_way_in), .clk(clk), .rst(rst), .q(victim_way_out));

   assign mem_addr = {mem_tag, cache_addr[10:3], mem_offset};
   assign err = mem_err | cache_err_0 | cache_err_1; //err signal

   //added 2 way assign logic
   assign hit_valid_0 = hit_0 & valid_0;
   
   assign access_data = access_victim ? cache_data_out_1 : cache_data_out_0;
   assign access_tag = access_victim ? tag_out_1 : tag_out_0;
   assign access_dirty = access_victim ? dirty_1 : dirty_0;

   assign comp_data = victim ? cache_data_out_1 : cache_data_out_0;
   assign comp_tag = victim ? tag_out_1 : tag_out_0;
   assign comp_dirty = victim ? dirty_1 : dirty_0;

   //DataOut output  
   assign DataOut = hit ? (hit_valid_0 ? cache_data_out_0 : cache_data_out_1) : 
	                  (comp ? comp_data : access_data);
   
   assign valid = valid_0 | valid_1;
   assign hit = (hit_valid_0) | (hit_1 & valid_1);
   assign dirty = hit ? (hit_valid_0 ? dirty_0 : dirty_1) : 
	                (comp ? comp_dirty : access_dirty);
   assign tag_out = hit ? (hit_valid_0 ? tag_out_0 : tag_out_1) : 
	                  (comp ? comp_tag : access_tag);
   
   assign victim_way_in = invert_vic ? ~victim_way_out : victim_way_out;
   assign victim_in = comp ? victim : access_victim;

   assign cache_wr_0 = hit_valid_0 ? cache_wr : (comp ? 1'b0 : 
	                           (access_victim ? 1'b0 : cache_wr));
   assign cache_wr_1 = (hit_1 & valid_1) ? cache_wr : (comp ? 1'b0 :
	                           (~access_victim ? 1'b0 : cache_wr));   

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
      invert_vic = 1'b0;
      victim = ((~hit_0 & hit_1) | (valid_0 & ~valid_1)) ? 1'b1 : ((hit_0 & ~hit_1) ?
	       1'b0 : ((valid_0 & valid_1) ? victim_way_out : 1'b0));
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
		 invert_vic = 1'b1;
                 next_state = (Wr & ~Rd) ? WRCOMP : (~Wr & Rd) ? RDCOMP : IDLE;
         end
         DONE: begin
                 en = 1'b1;
                 Done = 1'b1;
                 CacheHit = 1'b1;
                 Stall = 1'b0;
		 invert_vic = 1'b1;
                 next_state = (Wr & ~Rd) ? WRCOMP : (~Wr & Rd) ? RDCOMP : IDLE;
         end
         default: begin //ERR
                 next_state = (Rd & Wr) ? ERR : IDLE;
         end
      endcase
   end
   
endmodule // mem_system
// DUMMY LINE FOR REV CONTROL :9:
