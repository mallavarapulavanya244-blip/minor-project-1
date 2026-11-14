
module cmos_inv(a, y);
input a; output y;
assign y = ~a;
endmodule

module cmos_nand(a, b, y);
input a, b; output y;
assign y = ~(a & b);
endmodule

module cmos_nor(a, b, y);
input a, b; output y;
assign y = ~(a | b);
endmodule

module cmos_xor(a, b, y);
input a, b; output y;
wire n1, n2, n3;
cmos_nand g1(a, b, n1);
cmos_nand g2(a, n1, n2);
cmos_nand g3(b, n1, n3);
cmos_nand g4(n2, n3, y);
endmodule

module full_adder_cmos(a, b, cin, sum, cout);
input a, b, cin; output sum, cout;
wire x1;
cmos_xor x_a(a, b, x1);
cmos_xor x_s(x1, cin, sum);
wire ab_n, bc_n, ac_n;
wire ab_and, bc_and, ac_and;
cmos_nand n1(a, b, ab_n);
cmos_inv i1(ab_n, ab_and);
cmos_nand n2(b, cin, bc_n);
cmos_inv i2(bc_n, bc_and);
cmos_nand n3(a, cin, ac_n);
cmos_inv i3(ac_n, ac_and);
assign cout = ab_and | bc_and | ac_and;
endmodule

module adder4_cmos(a, b, cin, sum, cout);
input [3:0] a, b; input cin;
output [3:0] sum; output cout;
wire c1, c2, c3;
full_adder_cmos fa0(a[0], b[0], cin, sum[0], c1);
full_adder_cmos fa1(a[1], b[1], c1, sum[1], c2);
full_adder_cmos fa2(a[2], b[2], c2, sum[2], c3);
full_adder_cmos fa3(a[3], b[3], c3, sum[3], cout);
endmodule