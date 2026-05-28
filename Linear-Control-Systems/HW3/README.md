# Linear Control Systems - Assignment 3 (Transient Response Analysis & Feedback Stability)

This directory contains the computational simulations, parametric behavior tracking, and loop stability analyses for the third assignment of the Linear Control Systems course at the University of Tehran. The assignment covers closed-loop stability verification and the physical intuition behind shifting poles and zeros.

## Key Core Topics Covered

### 1. Multi-Variable Closed-Loop Stability Analysis
* **Boundary and Gain Margin Tuning:** Determining the precise ranges of forward-path gains required to maintain bounded-input bounded-output (BIBO) stability for third-order systems.
* **Marginal Stability Dynamics:** Formulating and simulating the exact critical threshold to extract the absolute frequency of sustained oscillations when the closed-loop poles cross the imaginary axis.

### 2. Standard Second-Order Parametric Analysis
* **Damping and Frequency Variations:** Mapping various combinations of damping coefficients ($\zeta$) and natural frequencies ($\omega_n$) to observe their direct impact on continuous time-domain responses.
* **Performance Metric Extraction:** Algorithmically analyzing step response curves to evaluate overshoot ($M_p$), settling time ($T_s$), rise time ($T_r$), and peak time ($T_p$) under underdamped, critically damped, and overdamped conditions.

### 3. Dynamic Effects of Zeros and Poles in Feedback Loops
* **Open and Closed-Loop Cascading:** Implementing forward-path modifications within Simulink to introduce additional poles ($\frac{1}{1 + T_p s}$) and zeros ($1 + T_z s$) to a baseline second-order plant.
* **Transient Trajectory Distortion:** Investigating how the proximity of an added pole or zero alters the systemic overshoot and convergence rate, comparing decoupled step trajectories across multiple integrated scopes to benchmark system stability.
