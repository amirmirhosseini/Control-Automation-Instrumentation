# Linear Control Systems - Assignment 4 (Root Locus Technique & Op-Amp Feedback Stability)

This directory contains the computational implementations, parametric root trajectories, and closed-loop stability simulations for the fourth assignment of the Linear Control Systems course at the University of Tehran. The primary focus is utilizing the Root Locus method to analyze stability margins and transient dynamics in feedback systems, including non-ideal operational amplifiers.

## Key Core Topics Covered

### 1. Root Locus Trajectory Construction and Analysis
* **Asymptotic and Breakaway Characterization:** Sketching and algorithmically verifying root loci for multi-pole systems to identify real-axis breakaway/break-in points and asymptotic angles ($60^\circ, 180^\circ, -60^\circ$) under positive loop gains.
* **Compensator Pole-Zero Placements:** Investigating the geometric shifting of closed-loop trajectories upon introducing additional open-loop poles and zeros to determine system damping variations.

### 2. Operational Amplifier Feedback Modeling
* **Non-Ideal Multi-Pole Op-Amp Plant:** Formulating the block diagram of an operational amplifier characterized by three distinct high-frequency parasitic and compensation poles ($s = -1$, $s = -10^3$, $s = -10^5$) alongside a high open-loop DC gain ($10^5$).
* **Feedback Gain Attenuation:** Modeling the feedback loop resistance as an adjustable attenuation block ($1/R_f$) within Simulink to regulate the loop transmission characteristics.

### 3. Closed-Loop Stability Thresholds and Transient Behaviors
* **Routh-Hurwitz and Marginally Stable Limits:** Extracting the precise critical feedback resistance ($R_f$) or loop gain threshold where the system transitions into instability as the dominant complex poles cross into the right-half s-plane ($RHP$).
* **Time-Domain Response Profiles:** Simulating step responses across stable, critically stable (sustained harmonic oscillations), and unstable configurations.
* **Maximum Speed Optimization without Overshoot:** Computing the exact critical damping break-point gain to ensure the fastest non-oscillatory time-domain convergence rate.
