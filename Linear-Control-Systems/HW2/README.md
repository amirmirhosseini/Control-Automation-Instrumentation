# Linear Control Systems - Assignment 2 (State-Space Representations & Linearization)

This directory contains the computational simulations, state-space mapping, and dynamic linearization projects for the second assignment of the Linear Control Systems course at the University of Tehran. The assignment bridges theoretical transfer functions with real-world non-linear circuit modeling[cite: 16].

## Key Core Topics Covered

### 1. Transfer Function To State-Space Structural Mapping
* **Canonical Form Formulations:** Utilizing MATLAB routines to convert high-order continuous-time transfer functions into state-space representations ($A, B, C, D$).
* **Stability & Eigenvalue Analysis:** Evaluating the system matrices to verify stability characteristics and analytical time-domain responses against numerical impulse simulations.

### 2. Non-Linear Circuit Modeling & Dynamic Linearization
* **Dynamic Equation Derivation:** Establishing non-linear differential equations for a practical voltage regulator circuit incorporating exponential diode current characteristics.
* **Operating Point Linearization:** Executing small-signal first-order approximations around a specific DC bias point to extract localized linear state-space models[cite: 16].
* **Transient Response Validation:** Simulating the linearized system's response to step inputs to evaluate localized dynamic behavior[cite: 16].

### 3. Simulink Block-Diagram Integration & Behavior Testing
* **State Interconnection Topology:** Implementing the linearized system equations within Simulink using elementary integrator, gain, and summing blocks to observe signal trajectories.
* **Boundary Evaluation:** Comparing the time-domain trajectories of the exact non-linear model against the linearized approximation under close-to-operating-point and far-from-operating-point initial conditions to determine linearization validity limits.
