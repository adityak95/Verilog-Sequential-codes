module mod(clk,rst,q);
parameter WIDTH=3;
parameter N=7;
//[2:0]arr [6:0];
integer i;
input clk,rst;
output reg [WIDTH-1:0]q;

always@(posedge clk)begin 
	if(rst) q<=0;
	else begin 
		if(q==N-1) q<=0;
		else q<=q+1;
			
	end
end
endmodule
