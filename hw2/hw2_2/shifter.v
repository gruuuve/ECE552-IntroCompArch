module shifter (In, Cnt, Op, Out);
   
    input [15:0] In;
    input [3:0]  Cnt;
    input [1:0]  Op;
    output [15:0] Out;
   
    wire [15:0] out0, out1, out2, out3; //used for mux outputs
    wire [15:0] m_in0, m_in1, m_in2, m_in3; //used for value selects
       
    //note the order of initialization goes InA, InB, InD, InC 
    mux4_1 in_sel0 [15:0] (.InA({In[14:0], In[15]}), .InB({In[14:0], 1'b0}), 
	    .InD({1'b0, In[15:1]}), .InC({In[15], In[15:1]}), .S(Op), .Out(m_in0));
    mux4_1 in_sel1 [15:0] (.InA({out0[13:0], out0[15:14]}), .InB({out0[13:0], 2'b0}), 
	    .InD({2'b0, out0[15:2]}), .InC({out0[15], out0[15], out0[15:2]}), .S(Op), .Out(m_in1));
    mux4_1 in_sel2 [15:0] (.InA({out1[11:0], out1[15:12]}), .InB({out1[11:0], 4'b0}),
	    .InD({4'b0, out1[15:4]}), .InC({{4{out1[15]}}, out1[15:4]}), .S(Op), .Out(m_in2));
    mux4_1 in_sel3 [15:0] (.InA({out2[7:0], out2[15:8]}), .InB({out2[7:0], 8'b0}), 
	    .InD({8'b0, out2[15:8]}), .InC({{8{out2[15]}}, out2[15:8]}), .S(Op), .Out(m_in3));
   

    mux2_1 m0 [15:0] (.InA(In), .InB(m_in0), .S(Cnt[0]), .Out(out0));
    mux2_1 m1 [15:0] (.InA(out0), .InB(m_in1), .S(Cnt[1]), .Out(out1));
    mux2_1 m2 [15:0] (.InA(out1), .InB(m_in2), .S(Cnt[2]), .Out(out2));
    mux2_1 m3 [15:0] (.InA(out2), .InB(m_in3), .S(Cnt[3]), .Out(out3));

    assign Out = out3;
endmodule

