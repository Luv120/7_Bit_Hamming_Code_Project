module test;
    reg[4:1] d;
    wire[7:1] o;

    top dut(.d(d),.o(o));

    initial begin
        $dumpfile("hamming.vcd");
        $dumpvars(0, test);
        $monitor($time," Data=%b Encoded=%b Corrupted=%b Error_bit=%b Decoded=%b",
        d,dut.op,dut.y,dut.s,o);
        #2 d=4'b1101;
        #2 d=4'b1010;
        #2 d=4'b0111;
    end
endmodule