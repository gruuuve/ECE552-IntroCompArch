module rotate_right(In, shft_cnt, Out);

    input [15:0] In;
    input [3:0] shft_cnt;

    output [15:0] Out;

    wire [15:0] rotr_1, rotr_2, rotr_4, rotr_8;
    wire [15:0] rotr_1_out, rotr_2_out, rotr_4_out;

    //4 stages of rotation
    assign rotr_1 = {In[0], In[15:1]};
    assign rotr_1_out = shft_cnt[0] ? rotr_1 : In;

    assign rotr_2 = {rotr_1_out[1:0], rotr_1_out[15:2]};
    assign rotr_2_out = shft_cnt[1] ? rotr_2 : rotr_1_out;

    assign rotr_4 = {rotr_2_out[3:0], rotr_2_out[15:4]};
    assign rotr_4_out = shft_cnt[2] ? rotr_4 : rotr_2_out;

    assign rotr_8 = {rotr_4_out[7:0], rotr_4_out[15:8]};
    assign Out = shft_cnt[3] ? rotr_8 : rotr_4_out;

endmodule 
