# Minor Project 1 - 4-bit Adder Using CMOS Logic

This project implements a 4-bit Ripple Carry Adder using CMOS Logic Gates.

## What is this project?

A 4-bit Adder adds two 4-bit binary numbers.
Example: 5 + 6 = 11

It is built using CMOS gates like INV, NAND, NOR, XOR.
4 Full Adders are connected together to make a 4-bit Adder.

## Files in this Repo

| File | What is it? |
| --- | --- |
| adder4_cmos.v | Design file - Main Adder logic |
| tb_adder4.v | Testbench file - To test the Adder |
| waveform(1).png | Output waveform screenshot |

## Tools Used

- Verilog HDL
- EDA Playground - For Simulation
- GitHub - For Project Storage

## How to Run?

1. Go to EDA Playground - edaplayground.com
2. Select Language as Verilog
3. Paste `adder4_cmos.v` in design.sv
4. Paste `tb_adder4.v` in testbench.sv
5. Click on Run
6. Check the output in Log

## Test Cases

| A | B | Cin | Sum | Cout |
| --- | --- | --- | --- | --- |
| 0000 | 0000 | 0 | 0000 | 0 |
| 0001 | 0001 | 0 | 0010 | 0 |
| 0100 | 0011 | 0 | 0111 | 0 |
| 1010 | 0101 | 1 | 0000 | 1 |
| 1111 | 1111 | 1 | 1111 | 1 |

All test cases passed.


**Result:** All outputs matched with expected values. No errors in simulation.

### 2. Waveform Output

![Waveform Output](waveform(1).png)

Waveform shows the change in Sum and Cout for different values of A, B and Cin.
When A=1111 and B=1111 and Cin=1, Sum becomes 1111 and Cout becomes 1, which is correct.

### 3. Conclusion

The 4-bit Adder using CMOS Logic is working correctly.
All 5 test cases are passed successfully in EDA Playground simulation.

## Author

**Mallavarapu Lavanya**
B.Tech - Electronics and Communication
Minor Project 1 - VLSI / Digital Design Internship
## Author

**Mallavarapu Lavanya**
B.Tech - Electronics and Communication
Minor Project 1 - VLSI / Digital Design Internship# minor-project-1
my minor project 1 - intership project
