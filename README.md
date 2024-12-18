# **Disaster-Resilient Communication Network Simulation**

## **Overview**

This project focuses on implementing and analyzing a **disaster-resilient communication network** using **OMNeT++** and the **INET Framework**. The primary goal is to ensure communication continuity during disruptions caused by disaster scenarios.  

Instead of relying on a mesh topology, the project explores **conventional network designs with strategic routing configurations** to mitigate failures, optimize throughput, and analyze the impact of disaster-induced disruptions.

---

## **Objective**

The objectives of this project include:

- Simulating a communication network capable of adapting to disaster-induced disruptions.  
- Analyzing critical performance metrics under failure and recovery conditions.  
- Evaluating the following key aspects:
  - **Throughput**  
  - **End-to-End Delay**  
  - **Packet Delay Variation (Jitter)**  
  - **Collision Management**  
  - **Energy Consumption**

---

## **Tools & Technologies**

- **OMNeT++**: A discrete event network simulation framework.  
- **INET Framework**: Provides pre-built modules for simulating networks and protocols.  
- **C++**: For extending and customizing simulation models.

---

## **Network Design**

The simulation includes the following components:

1. **UDP-Based Traffic Streams**  
   - Simulated data flows between nodes to measure network performance.  

2. **Node/Link Failure Configurations**  
   - Strategic simulation of disaster-like disruptions, including node/link failures.

3. **Routing Mechanisms**  
   - Implementation of efficient routing protocols to reroute traffic dynamically in failure scenarios.

4. **Collision Management**  
   - Simulations to identify and minimize collisions under high network loads.  

5. **Performance Monitoring**  
   - Collection and analysis of metrics such as throughput, delay, and energy consumption under stress conditions.

---

## **Key Performance Metrics**

The following metrics were analyzed to evaluate network resilience:

- **End-to-End Delay**: The time taken for a packet to reach its destination.  
- **Packet Delay Variation (Jitter)**: Fluctuations in packet delivery time.  
- **Throughput**: The rate of successful data transmission in disrupted scenarios.  
- **Energy Consumption**: Power usage across network nodes.  
- **Collision Analysis**: Identification and handling of packet collisions.  

---

## **Simulation Scenarios**

1. **Baseline Scenario (Normal Operations)**  
   - All nodes and links are fully operational.

2. **Disaster Scenarios (Node/Link Failures)**  
   - Simulated failures to evaluate the network's adaptability and performance degradation.  

3. **Recovery Mechanisms**  
   - Simulated routing recovery and rerouting mechanisms under network failures.

4. **Impact of Mobility**  
   - Evaluation of network performance when nodes are mobile during disaster disruptions.  

---

## **Results and Insights**

Key findings from the simulations include:

- **Throughput** reduced slightly under failure scenarios but remained stable due to routing adjustments.  
- **End-to-End Delay** and **Jitter** increased under high loads or disruptions but were mitigated through efficient routing.  
- **Collision management** configurations effectively reduced packet loss under heavy traffic.  
- **Energy Consumption** patterns highlighted opportunities for further optimization in failure recovery mechanisms.  

---

## **Future Work**

To build on this project, potential enhancements include:

1. **Integration of QoS (Quality of Service)** mechanisms to prioritize critical data streams.  
2. **Non-QoS vs QoS Analysis** for disaster-related communication streams.  
3. **Energy-Efficient Routing Protocols** to reduce power consumption under failure conditions.  
4. **Wireless Network Simulations** to test real-world mobility scenarios.  

---

## **How to Run the Simulation**

### **Prerequisites**
- Install **OMNeT++** (version 6 or later).  
- Install the **INET Framework** (compatible with OMNeT++).

### **Steps to Run**
1. Clone the repository:  
   ```bash
   git clone https://github.com/your-repo-name.git
   ```
2. Open the project in OMNeT++ IDE.  
3. Verify that the **INET Framework** is configured correctly.  
4. Run the simulation with the provided configuration files (`.ini`).  

---


## **Contributors**

- **Mahiah Kulsum**: Project Leader, responsible for coding and simulation setup.  
- **Fatima Chowdhury**: Research Analyst, focused on implementing the AODV routing protocol table and its analysis.  
- **Joinab Binte Asifa Siraj**: Documentation Lead, compiled the presentation and IEEE research publication paper using LaTeX (Overleaf).  
- **Sadia Sultana Ani**: Report Writer, developed the comprehensive project report.

--- 


## **License**

This project is licensed under the **MIT License**.  

---

## **Acknowledgments**

We acknowledge the invaluable support and contributions from the following:  
- **OMNeT++ Community**  
- **INET Framework Developers**

