`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2025 05:34:50 PM
// Design Name: 
// Module Name: array_multi
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module array_multi(
    input [3:0] A,
    input [3:0] B,
    output [7:0] P
);
    wire c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12;
    wire s1, s2, s3, s4, s5, s6;
    wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15;

    // First row of partial products
    and a1(P[0], A[0], B[0]);  
    and a2(w1, A[0], B[1]);
    and a3(w7, A[0], B[2]);
    and a4(w10, A[0], B[3]);

    // Second row of partial products
    and a5(w2, A[1], B[0]);
    and a6(w3, A[1], B[1]);
    and a7(w8, A[1], B[2]);
    and a8(w13, A[1], B[3]);

    // Third row of partial products
    and a9(w4, A[2], B[0]);
    and a10(w5, A[2], B[1]);
    and a11(w11, A[2], B[2]);
    and a12(w14, A[2], B[3]);

    // Fourth row of partial products
    and a13(w6, A[3], B[0]);
    and a14(w9, A[3], B[1]);
    and a15(w12, A[3], B[2]);
    and a16(w15, A[3], B[3]);  

    // Partial Sum Computation
    HA h1(w1, w2, P[1], c1);
    FA f1(w3, w4, c1, s1, c2);
    FA f2(w5, w6, c2, s2, c3);

    HA h2(w7, s1, P[2], c4);
    FA f3(w8, s2, c4, s3, c5);
    FA f4(w9, c3, c5, s4, c6);

    HA h3(w10, s3, P[3], c7);
    FA f5(w11, s4, c7, s5, c8);
    FA f6(w12, c6, c8, s6, c9);

    HA h4(w13, s5, P[4], c10);
    FA f7(w14, s6, c10, P[5], c11);
    FA f8(w15, c9, c11, P[6], c12);

    assign P[7] = c12;

endmodule




