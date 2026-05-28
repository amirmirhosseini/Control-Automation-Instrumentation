# Instrumentation - Homework 2

This repository contains the design, simulation, and implementation files for the second assignment of the **Instrumentation** course at the **University of Tehran**. 

The technical implementations and validations were carried out using **Proteus** for circuit-level hardware co-simulation and **MATLAB/Simulink** for dynamic signal conditioning analysis.

---

## Project Objectives & Core Competencies Learned

The main objective of this assignment was to engineer complete analog signal conditioning chains, moving from raw sensor outputs through filtering, amplification, and digital conversion. Through this project, the core competencies learned include:

* **Active and Passive Signal Filtering:** Designing cascaded stages to isolate specific frequency bands and suppress electrical grid noise.
* **Bridge Circuits & Strain Measurements:** Modeling half-bridge and full-bridge strain gauge configurations to measure mechanical stress while achieving common-mode noise rejection.
* **Precision Amplification:** Implementing instrumentation amplifiers to transform low-amplitude differential voltages into readable industrial signals.
* **Digital Conversion Metrics (DAC & ADC):** Understanding the hardware architecture of **R-2R Ladder Networks** for digital-to-analog conversion, as well as calculating quantization step errors and binary code mapping for successive-approximation **ADCs**.

---

## Technical Implementation Strategy

The project workflow is structured into two primary industrial instrumentation applications:

### 1. Vibration Sensor Signal Conditioning (MATLAB / Simulink)
* **Band-Pass Filtering:** Designed a multi-stage RC network combining a high-pass filter and a low-pass filter to isolate mechanical vibrations while eliminating low-frequency baseline drifts and high-frequency electronic noise.
* **Grid Interference Rejection:** Implemented a twin-T notch filter tailored specifically to trap and eliminate power line interference without altering adjacent sensory information.
* **Loading Effect Correction:** Integrated active voltage followers between passive filtering stages in Simulink to maximize input impedance, minimize output impedance, and eliminate inter-stage loading attenuation.

### 2. Weight and Pressure Measurement Cell (Proteus)
* **Bridge Circuit Scaling:** Modeled a resistive strain gauge pressure sensor within a balanced bridge configuration, achieving a differential zero-voltage baseline under nominal conditions.
* **Instrumentation Amplifier Tuning:** Calibrated an industrial instrumentation amplifier by calculating the exact external gain resistance needed to scale low-voltage differential bridge fluctuations up to standard analog ranges.
* **Quantization & Data Discretization:** Simulating the interface between the amplified analog pressure curve and an 8-bit Analog-to-Digital Converter (ADC), mapping continuous physical strain into exact digital binary outputs and assessing quantization resolution.
