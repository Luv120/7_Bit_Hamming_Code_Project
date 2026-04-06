module decode(corrupted,s,corrected);
    input [7:1] corrupted;
    input [3:1] s;
    output reg [7:1] corrected;

    always @(*) begin
        corrected = corrupted;
        if(s != 0)
            corrected[s] = ~corrected[s];
    end
endmodule