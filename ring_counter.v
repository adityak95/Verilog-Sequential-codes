module counter(rst,count,clk);
parameter WIDTH=4;
input clk, rst;
integer i;
output reg [WIDTH-1:0]count;
 always@(posedge clk)begin 
	if(rst) count=4'b0001;
	else begin
	//	count[WIDTH-1]=count[0];//c[3]=1 // 0100
		for( i=0;i<WIDTH-1;i=i+1)begin //c[0]= c1 = 0 c[1]=c[2]=0 c[2]=c[3] = 0// 0000
		count[i]<=count[i+1];
		count[WIDTH-1]<=count[0];//c[3]=1 // 0100
		end
	//	count[WIDTH-1]<=count[0];//c[3]=1 // 0100
			//count<=count<<1;
			//count[0]=count[7];
			//count=count<<1;
	end
 end
 endmodule
