`include"syn_counter.v"
module tb;
parameter WIDTH=4;
reg clk,rst;
wire [WIDTH-1:0]q;
syn_count dut(.*);

always #5 clk=~clk;
initial begin 
clk=0;rst=1;
repeat(2)@(posedge clk);
rst=0;
end
initial $monitor($time,"\tclk=%b,rst=%b,q=%d",clk,rst,q);
initial #400 $finish();
endmodule
