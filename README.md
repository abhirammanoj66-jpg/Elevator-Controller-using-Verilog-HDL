# Elevator Controller using Verilog HDL

## Overview

This project implements a 3-Floor Elevator Controller using Verilog HDL. The controller accepts floor requests and automatically moves the elevator to the requested floor while controlling door operations.

The design was simulated and verified using Xilinx ISE 14.7 and ISim Simulator.

---

## Features

- 3-Floor Elevator System
- Floor Request Handling
- Automatic Upward and Downward Movement
- Door Open Control at Destination Floor
- FSM-Based Control Logic
- Behavioral Simulation Verification

---

## System Operation

### Initial State

- Elevator starts at Floor 1
- Door remains closed

### Example Scenario

#### Request Floor 3

Floor 1 → Floor 2 → Floor 3

- Door opens at Floor 3

#### Request Floor 1

Floor 3 → Floor 2 → Floor 1

- Door opens at Floor 1

---

## Inputs

| Signal | Description |
|----------|----------|
| clk | System Clock |
| rst | System Reset |
| req_floor1 | Request Floor 1 |
| req_floor2 | Request Floor 2 |
| req_floor3 | Request Floor 3 |

---

## Outputs

| Signal | Description |
|----------|----------|
| current_floor | Current Elevator Position |
| door_open | Door Status |

---

## Floor Encoding

| Floor | Binary Value |
|---------|---------|
| Floor 1 | 00 |
| Floor 2 | 01 |
| Floor 3 | 10 |

---

## Tools Used

- Verilog HDL
- Xilinx ISE 14.7
- ISim Simulator

---

## Simulation Results

The design was verified through behavioral simulation.

Verified functionality:

- Floor request detection
- Elevator movement between floors
- Upward and downward transitions
- Door opening at destination floor
- Reset operation

---

## Project Files

- elevator_controller.v → RTL Design
- elevator_controller_tb.v → Testbench
- waveform.png → Simulation Waveform

---

## Concepts Learned

- Finite State Machines (FSM)
- RTL Design
- Sequential Logic
- Digital Control Systems
- Verilog HDL
- Functional Verification
- Simulation and Debugging

---

## Future Improvements

- Support for more floors
- Request Queue Management
- Up/Down Direction Indicators
- Door Open Delay Timer
- Emergency Stop Function
- Overload Detection
- FPGA Hardware Implementation

---

## Author

Abhiram Manoj

Electronics and Communication Engineering
