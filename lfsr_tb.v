`timescale 1ns/1ps
module lfsr_tb;
reg clk, set;
wire [2:0]out;
lfsr ans (clk, set, out);

initial begin
    clk=0;
    set=0;
end

always #50 clk=~clk;
initial #50 set=1'b1;
initial #150 set=1'b0;
initial #2000 $finish;

initial begin
$dumpfile("lfsr.vcd");
$dumpvars(0, ans);
end
endmodule