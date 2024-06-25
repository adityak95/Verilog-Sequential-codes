module count(clk,rst,mode,q);
parameter WIDTH=4;
input clk,rst,mode;
output reg [WIDTH-1:0]q;

always@(posedge clk)begin 
if (mode)begin 
	if(rst) q<=0;
	else q<=q+1;
end
else begin 
	if(rst) q<=0;
	else q<=q-1;
end
end
endmodule
