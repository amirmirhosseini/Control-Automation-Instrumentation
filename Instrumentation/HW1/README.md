# Instrumentation - Homework 1

This repository contains the solutions, analytical derivations, and data-driven analysis for the first assignment of the **Instrumentation** course at the **University of Tehran**. 

All computational models, algorithms, and system selection tasks were implemented and evaluated using **MATLAB**.

---

## Project Objectives & Implementation Strategy

The primary focus of this assignment is to understand industrial measurement loops, evaluate sensor characteristics, and apply mathematical algorithms for sensor data modeling and system identification.

### 1. Loop Analysis & Static Characteristics
* **Industrial Feedback Loops:** Investigated the roles of sensors and transmitters (such as 4-20 mA signaling systems) within closed-loop liquid level processes, evaluating the impact of measurement biases and operational failures on the controller.
* **Sensor Performance Metrics:** Analyzed raw experimental data to quantify and plot key static characteristics including dead zones, maximum hysteresis errors, accuracy, precision, and repeatability.

### 2. Algorithmic Data Modeling & System Identification
* **Curve Fitting & Parameter Estimation:** Developed and executed both **Batch Least Squares (LS)** and **Recursive Least Squares (RLS)** estimation algorithms from scratch in MATLAB to find optimal polynomial regression models for noisy sensor data curves.
* **Overfitting Control & Cross-Validation:** Implemented a data-splitting workflow to evaluate root-mean-square errors (RMSE) across various polynomial degrees, determining the optimal model order that balances variance and training bias.
* **Dynamic System Extraction:** Utilized the MATLAB Curve Fitting toolbox and optimization scripts to identify continuous-time transfer functions of first-order and second-order sensors, extracting critical dynamic parameters such as time constants, damping ratios, and natural frequencies.
