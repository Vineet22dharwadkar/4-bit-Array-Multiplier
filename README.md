# 4-bit-Array-Multiplier
Project Description

This project implements a 4-bit Array Multiplier using Verilog HDL. The design is based on fundamental combinational logic elements like AND gates, Half Adders (HA), and Full Adders (FA) to perform binary multiplication. The implementation is verified through simulation in ModelSim / Vivado.

Features-
Implements a 4-bit multiplication using an array multiplier approach
Uses AND gates for partial products and adders for summation
Designed using structural modeling in Verilog
Verified with multiple test cases
Simulated using  Vivado to ensure correctness

File Structure-
ha.v - Half Adder module
fa.v - Full Adder module
array_multi.v - 4-bit Array Multiplier module
array_multiplier_tb.v - Testbench for verification
README.md - Project documentation

Design Explanation-
The Array Multiplier follows a straightforward approach to multiply two 4-bit binary numbers:
Partial Product Generation: Using AND gates, each bit of multiplicand is multiplied with each bit of the multiplier.
Row-wise Addition: The partial products are then added using Half Adders (HA) and Full Adders (FA).
Final Summation: The sum outputs provide the final 8-bit product.
