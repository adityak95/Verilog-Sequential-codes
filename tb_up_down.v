`include"up_down_counter.v"
module tb;
parameter WIDTH=4;
reg clk,rst,mode;
wire [WIDTH-1:0]q;

count dut(.*);
always #5 clk=~clk;
initial $monitor($time,"\tclk=%b,rst=%b,mode=%b,q=%d",clk,rst,mode,q);
initial #500 $finish();
initial begin 
clk=0;rst=1;
repeat(2)@(posedge clk);
rst=0;mode=1;
#100;
mode=0;
end
endmodule
