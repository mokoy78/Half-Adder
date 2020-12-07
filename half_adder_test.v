`include "half_adder.v"
`timescale 1ns/1ns

module half_adder_test();

   reg A;
   reg B;
   wire	sum;
   wire	carry;

half_adder HAD (
		.sum(sum),
		.carry(carry),
		.A(A),
		.B(B)
				);




initial
	begin 
		$dumpfile ("half_adder_test.vcd");
		$dumpvars (0 ,half_adder_test);
		$monitor ("sum=%b, carry=%b, A=%b, B=%b", sum, carry, A, B );
		#10 
		#10 A='b0; B='b0;
		#10 A='b1;
		#10 A='b1; B='b1;
		#10 A='b0; 
		#10 $finish;
end 

endmodule
 

