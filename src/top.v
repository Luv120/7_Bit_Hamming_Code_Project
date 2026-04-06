module top(d,o);
    input[4:1] d;
    output[7:1] o;
    wire[7:1] op,y;
    wire[2:0] x;
    wire[3:1] s;
    encode g1(d,op);
    noise g2(op,x,y);
    syndrome g3(y,s);
    decode g4(y,s,o);
endmodule