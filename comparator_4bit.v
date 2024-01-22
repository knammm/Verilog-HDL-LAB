
module comparator_4bit(A, B, A_gt_B, A_lt_B, A_eq_B);
input [3:0] A;
input [3:0] B;
output  A_gt_B, A_lt_B, A_eq_B;
wire g1, g2, l1, l2, e1, e2;
Comparator_2bit comp1(A[3:2],B[3:2],g1,l1,e1);
Comparator_2bit comp2(A[1:0],B[1:0],g2,l2,e2);
 and (net1 , e1, g2),
     (net2, e1, l2);
and (A_eq_B, e2, e1);
or (A_gt_B, g1, net1),
   (A_lt_B, l1, net2);



endmodule
