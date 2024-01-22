module fullAdder(a, b, c_in, sum, c_out);
    input a, b, c_in;
    output sum, c_out;
    wire c1,c2,s1;

    half_adder_struc PARTSUM(a,b,s1,c1);
    half_adder_struc SUM(s1,c_in,sum,c2);
    or(c_out,c2,c1);
endmodule
