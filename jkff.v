module jk(clk,rst,j,k,q,qbar);
input clk,rst,j,k;
output reg q,qbar;

always@(posedge clk)begin 
if(rst) begin 
	q<=1'b0;
	qbar<=1'b1;
end
else begin 
	if(j==0 && k==0) begin q<=q; qbar<=~q; end
	else if(j==0 && k==1) begin q<=1'b0; qbar<=1'b1; end
	else if(j==1 && k==0) begin q<=1'b1; qbar<=1'b0; end
	else begin q<=~q; qbar<=~qbar; end
end
end
endmodule

