# Industrial Automation - Automated Material Sorting & Palletizing System (Homework 1)

This project implements an automated industrial sorting and handling cell designed to categorize and pack items based on their material profile (Metal, Plastic, and Defective components). 

The entire system layout is designed and simulated in **Factory I.O**, while the complete control sequence and operation logic are engineered inside **Control I/O**.

---

##  Project Objective

The primary goal of this automation exercise is to achieve an efficient, continuous, and error-free material distribution pipeline. The system must automatically scan a mixed flow of items on a main conveyor belt, route them through appropriate handling tracks, and package them into target containers using robotic manipulators, while maintaining real-time production analytics.

---

##  Implementation Strategy & Control Logic

To fulfill the requirements of the exercise, the control system is developed using **Functional Block Diagrams (FBD)**, focusing on three core operational phases:

### 1. Robust Detection & Filtering
* **Material Profiling:** Industrial inductive and photoelectric sensors are deployed along the main line to instantly distinguish between metal, plastic, and defective objects.
* **Edge Detection:** To prevent counting errors and multi-triggering caused by a single object passing a sensor, **Rising/Falling Edge Detectors (`RTrig`/`FTrig`)** are implemented. This ensures exactly one pulse per item.

### 2. Time-Synchronized Actuation
* **Defect Ejection:** When a defective item is identified, a high-speed pneumatic pusher is activated to deflect it from the main stream. 
* **Process Synchronization:** **Timer Blocks (`TOn`/`TOf`)** are used to bridge the physical gap between the sensing point and the actuator position. This guarantees that the pusher or sorting arm operates exactly when the object arrives in front of it.

### 3. Automated Handling & Real-Time Monitoring
* **Multi-Axis Pick & Place:** For non-defective materials, the logic coordinates two-axis robotic arms. The system sequences their vertical motion, gripper engagement, and horizontal translation to smoothly transfer sorted items into generic storage boxes.
* **HMI Counter Integration:** A centralized control panel operates as the system's supervisor. **Up-Counters (`Ctu`)** keep track of the system's output, dynamically updating the digital display panels to show precise real-time statistics of processed materials and total boxed packages.
