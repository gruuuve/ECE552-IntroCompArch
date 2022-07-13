module rotate_left(In, shft_cnt, Out);

    input [15:0] In;
    input [3:0] shft_cnt;

    output [15:0] Out;

    wire [15:0] rotl_1, rotl_2, rotl_4, rotl_8;
    wire [15:0] rotl_1_out, rotl_2_out, rotl_4_out;

    //4 stages of rotation
    assign rotl_1 = {In[14:0], In[15]};
    assign rotl_1_out = shft_cnt[0] ? rotl_1 : In;

    assign rotl_2 = {rotl_1_out[13:0], rotl_1_out[15:14]};
    assign rotl_2_out = shft_cnt[1] ? rotl_2 : rotl_1_out;

    assign rotl_4 = {rotl_2_out[11:0], rotl_2_out[15:12]};
    assign rotl_4_out = shft_cnt[2] ? rotl_4 : rotl_2_out;

    assign rotl_8 = {rotl_4_out[7:0], rotl_4_out[15:8]};
    assign Out = shft_cnt[3] ? rotl_8 : rotl_4_out;

endmodule    
