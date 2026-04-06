module noise(o,x,corrupted);
    input [7:1] o;
    output reg [2:0] x;
    output reg [7:1] corrupted;

    integer seed;

    always @(o) begin
        seed = $time;
        x = ($random(seed) % 7 + 7) % 7 + 1;

        corrupted = o;
        corrupted[x] = ~corrupted[x];
    end
endmodule