# ⏰ Real-Time Clock (RTC) in Verilog

A synthesizable 24-hour Real-Time Clock (RTC) designed in Verilog HDL. The project demonstrates digital design concepts including clock division, cascading counters, hierarchical module design, and FPGA implementation readiness.

---

## Features

- 24-hour digital clock
- HH:MM:SS time format
- Modular Verilog architecture
- Clock divider for generating 1 Hz clock
- Reset support
- Simulation testbench
- Synthesizable RTL
- FPGA compatible

---

## Project Structure

```
rtl/
tb/
simulation/
docs/
README.md
```

---

## Design Overview

The design consists of:

- Clock Divider
- Seconds Counter
- Minutes Counter
- Hours Counter
- Top Module

Overflow from seconds increments minutes, and overflow from minutes increments hours.

---

## Simulation

Run using:

ModelSim

```
vlog rtl/*.v
vlog tb/rtc_tb.v
vsim rtc_tb
run -all
```

or

Icarus Verilog

```
iverilog rtl/*.v tb/rtc_tb.v
vvp a.out
```

---

## Applications

- FPGA Learning
- Digital Clock
- Embedded Systems
- Verilog Practice
- RTL Design
- ASIC Design Training

---

## Future Work

- Alarm Clock
- Stopwatch
- Calendar
- Leap Year
- LCD Interface
- UART Time Configuration
- FPGA Board Demonstration

---

## Author

Kashyap Joshi
