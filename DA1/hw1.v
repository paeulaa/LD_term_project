module da1(g1, g0, a1, a0, b1, b0);

output g1, g0;
input a1, a0, b1, b0;
wire c1, d1, e1, f1, h1, c0, d0, e0, f0, h0;

and(c1, ~a1, a0, b0);
and(d1, a0, b1, b0);
and(e1, a1, a0, b1);
and(f1, a1, b1, ~b0);
and(h1, a1, ~a0, ~b1, b0);
or(g1, c1, d1, e1, f1, h1);

and(c0, a0, ~b1, b0);
and(d0, a1, a0, b0);
and(e0, a1, b1, b0);
and(f0, a1, ~a0, b1);
and(h0, ~a1, a0, b1, ~b0);
or(g0, c0, d0, e0, f0, h0);

endmodule 
