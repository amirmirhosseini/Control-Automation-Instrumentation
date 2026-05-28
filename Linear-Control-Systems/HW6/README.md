# Linear Control Systems - Homework 6

This repository contains the analytical derivations and MATLAB simulations for **Homework 6** of the Linear Control Systems course at the **University of Tehran**.

## Course Concept Overview
The primary focus of this assignment is the design and verification of **Lead, Lag, and Lead-Lag Compensators** to satisfy specific time-domain and frequency-domain stability criteria. 

---

## Simulation Architecture

The simulation framework is divided into two core phases:

### 1. Classical Controller Verification
* **Frequency & Root Locus Tuning:** Validating hand-calculated compensators by monitoring Phase/Gain margins via Bode plots and ensuring trajectory paths cross dominant closed-loop poles using root locus tools.
* **Transient & Steady-State Corrections:** Utilizing Lag networks to scale up the static velocity error constant ($K_v$) and deploying dual-stage Lead/PD structures to suppress high overshoots and speed up settling times.

### 2. Nonlinear System Linearization & Control
* **State-Space Modeling:** Deriving the small-signal linearized state-space model of a non-linear rotational mechanical system (featuring a rigid disk with non-linear spring and damping dynamics) around its equilibrium point.
* **Dynamic Performance Enhancement:** Designing and simulating a custom feedback controller to fix the uncompensated system's severe underdamped oscillations, successfully stabilizing the plant and drastically improving its transient behavior.
