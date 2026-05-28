# Linear Control Systems - Assignment 1 (System Modeling & State-Space)

This directory contains the computational simulations and analytical verifications for the first assignment of the Linear Control Systems course at the University of Tehran. The primary focus is on mathematical modeling, system representations, and state-space analysis.

## Key Core Topics Covered

### 🔍 1. State-Space to Transfer Function Conversion
* **Analytical Matrix Inversion:** Implementing symbolic computations using MATLAB's `syms` toolbox to derive exact rational transfer functions $G(s) = C(sI-A)^{-1}B + D$ from a given third-order multi-state space model.
* **Numerical Validation:** Verifying theoretical signal-flow graph reductions and Mason's gain rule against algorithmic state-space conversion routines.

### 📈 2. Open-Loop System Dynamics
* **System Matrix Spectrum:** Analyzing the eigenvalues of the system matrix ($A$) to evaluate open-loop poles and system modes.
* **MIMO/SISO Characterization:** Mapping internal state couplings to input-output relationships for multi-variable dynamic processes.
