module test;
  reg [3:0] count; // three-bit input
  wire out1, out2;  // output of majority
  integer i;
  da1 m(out1, out2, count[0], count[1], count[2], count[3]);
  initial begin
    $fsdbDumpfile("da1.fsdb");
    $fsdbDumpvars;
  end
initial begin
  for (i=0; i<16; i=i+1) begin
    count = i[3:0];
    #10
    $display("in = %b, out1 = %b, out2 = %b", count, out1, out2);
  end
end
endmodule
