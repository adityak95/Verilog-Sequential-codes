`include"ring_counter.v"
module tb;
parameter WIDTH =4;
reg clk,rst;
wire [WIDTH-1:0]count;
counter #(.WIDTH(WIDTH))dut(.*);

initial begin 
clk<=0;rst<=1;
forever #5 clk=~clk;
end
/*initial begin
repeat(2)@(posedge clk);
rst<=0;
end*/
initial begin
$monitor($time,"\clk=%b,rst=%b,count=%d",clk,rst,count);
#500;
$finish();
end
initial begin
repeat(2)@(posedge clk);
rst=0;
//repeat(15)@(posedge clk);
//rst = 0;
end
endmodule
