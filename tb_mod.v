`include"mod counter.v"
module tb;
parameter WIDTH=3;
parameter N=7;
reg clk,rst;
wire [2:0]q;

mod dut(.*);
always #5 clk=~clk;
initial $monitor($time,"\tclk=%b,rst=%b,q=%d",clk,rst,q);
initial #500 $finish();
initial begin 
clk=0;rst=1;
repeat(2)@(posedge clk);
rst=0;
end
endmodule
