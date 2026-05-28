# Instrumentation - Homework 3

This repository contains the embedded C firmware and circuit co-simulations for the third assignment of the **Instrumentation** course at the **University of Tehran**. 

The implementation balances bare-metal microcontroller configurations in **STM32CubeIDE** with hardware validations using **Proteus**.

---

## Technical Project Modules

### 1. Multi-State Sequential System
* **Dynamic Logic:** Engineered a non-blocking synchronous state machine to track system states continuously, preventing CPU-stalling bottlenecks.
* **Emergency Interlocks:** Implemented hardware interrupts to handle asynchronous override signals, routing the system into safe paused conditions or strict firmware lock loops upon hazard detection.

### 2. PWM-Based Closed-Loop Motor Control
* **Frequency Tuning:** Calibrated internal timer register profiles to output a precise high-frequency PWM signal for smooth velocity regulation.
* **Dynamic Feedback Integration:** Interfaced a continuous analog control channel through a multi-bit ADC to scale driver duty cycles in real time, while using edge-triggered external interrupts to instantly alternate motor direction through an H-bridge driver.

### 3. Synchronous Timing & Alarms
* **Precise Clock base:** Initialized a hardware timer interrupt loop acting as a highly accurate timebase to drive a live periodic countdown sequence.
* **Automated Peripheral Triggering:** Synchronized real-time status updates with active audio-visual alarm modules and visual data displays upon sequence termination or software resets.

### 4. Multi-Sensor Recognition & Virtual Calibration
* **Voltage-Window Parsing:** Utilized a multi-channel ADC to implement an auto-recognition algorithm, scanning analog inputs to parse live data into unique voltage boundaries and classify the active sensor profile automatically.
* **Hardware Reference Calibration:** Resolved simulation-level reference voltage mismatch errors by modifying underlying power rail parameters, eliminating calculation scaling discrepancies to achieve true sensor measurement alignment.
