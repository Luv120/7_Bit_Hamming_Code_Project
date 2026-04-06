module syndrome(corrupted,s);
    input[7:1] corrupted;
    output[3:1] s;

    assign s[1]=corrupted[1]^corrupted[3]^corrupted[5]^corrupted[7];
    assign s[2]=corrupted[2]^corrupted[3]^corrupted[6]^corrupted[7];
    assign s[3]=corrupted[4]^corrupted[5]^corrupted[6]^corrupted[7];
endmodule