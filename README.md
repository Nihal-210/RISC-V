# 🧠 5-Stage Pipelined RISC-V Processor

### 📌 Overview
This project implements a **cycle-accurate 5-stage pipelined RISC-V processor** (RV32I subset) using **Verilog HDL**. The processor follows the classical pipeline stages:
1. Instruction Fetch (IF)
2. Instruction Decode/Register Fetch (ID)
3. Execute (EX)
4. Memory Access (MEM)
5. Writeback (WB)

Each stage is separated by dedicated pipeline registers to allow instruction-level parallelism. The processor supports a basic set of RISC-V RV32I instructions and simulates correct pipelined execution.

---

### ⚙️ Technologies Used
- **Language:** Verilog HDL
- **Tool:** Vivado (for simulation and synthesis)
- **ISA:** RV32I (32-bit RISC-V integer subset)
  
---
