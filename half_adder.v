module half_adder (sum, carry, A, B); 

	input A, B; 
	output carry, sum; 
	assign sum=A^B; 
	assign carry=A&B; 
endmodule 
