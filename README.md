# Full-Subtractor
📘 Project Overview
This project demonstrates the design and simulation of a Full Subtractor using Verilog HDL. A full subtractor is a combinational logic circuit that performs subtraction of three bits: minuend (A), subtrahend (B), and borrow-in (Bin), producing a difference (Diff) and a borrow-out (Bout).

🧮 Logic Explanation
Inputs:
A – Minuend
B – Subtrahend
Bin – Borrow In

Outputs:
Diff = A ⊕ B ⊕ Bin
Bout = (~A & B) | (Bin & ~(A ^ B))
This expression ensures correct binary subtraction behavior, even when borrow conditions occur from the previous bit.

🧪 Testbench Strategy
Manual Testing: Each combination of inputs (A, B, Bin) was tested sequentially with clear observation of waveform results.
Loop-based Automation: An elegant for loop was also used in a separate testbench to verify all 8 input combinations (from 000 to 111) automatically.

🛠️ Tools Used
Verilog HDL
EDA Playground – Online simulation (Link: )
EPWave Viewer – Waveform visualization
GTKWave / VCD Dump – Signal tracing

