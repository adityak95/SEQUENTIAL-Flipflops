module t(clk,rst,t,q,qbar);
input clk,rst,t;
output reg q,qbar;
 
always@(posedge clk)begin
if(rst)begin 
	q<=1'b0;
	qbar<=1'b1;
end
else begin 
	if(t) begin q<=1'b0 ; qbar<=1'b1; end
	else begin q<=1'b1 ; qbar<=1'b0; end
end
end
endmodule

