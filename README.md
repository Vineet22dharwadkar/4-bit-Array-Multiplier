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
![Image](https://github.com/user-attachments/assets/2802dc99-a305-401c-a286-0b67814539d4)
![Image](https://github.com/user-attachments/assets/bb5e6648-cfbe-49b2-aa6a-a937e0599192)
![Image](https://github.com/user-attachments/assets/ec83e11a-ebcb-4196-b056-2b874d8935f7)
![Image](https://github.com/user-attachments/assets/775f3c12-a63d-4cc2-b630-f597531941ba)
