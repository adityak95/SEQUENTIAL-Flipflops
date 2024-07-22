module d(clk,rst,d,q,qbar);
input clk,rst,d;
output reg q,qbar;
 
always@(posedge clk)begin
if(rst)begin 
	q<=1'b0;
	qbar<=~q;
end
else begin 
	if(d) begin q<=1'b1 ; qbar<=1'b0; end
	else begin q<=1'b0 ; qbar<=1'b1; end
end
end
endmodule
