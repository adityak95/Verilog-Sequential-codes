module syn_count(clk,rst,q);
parameter WIDTH=4;
input clk,rst;
output reg [WIDTH-1:0]q;

//always@(posedge clk)begin //synchronous rst counter

//always@(posedge clk or posedge rst)begin //asynchronous rst counter
//always@(posedge clk or negedge rst)begin //asynchronous rst 
//always@(negedge clk or posedge rst)begin //asynchronous rst
always@(negedge clk or negedge rst)begin 
if(rst) q<=0;
else q<=q+1;  //q<=q-1 (downcounter)
end
endmodule
