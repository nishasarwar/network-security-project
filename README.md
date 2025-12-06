Here’s a **ready-to-use, professional README.md** for your GitHub repository. It matches your project and includes instructions for your scripts, report, and scans.

---

```markdown
# Tiered Security Framework

This project demonstrates a consultancy-style framework for classifying organizations into Low, Mid, and High security tiers and recommending corresponding defenses. It includes both the theoretical framework and practical technical demonstrations such as vulnerability scanning and firewall hardening.

---

## **Project Overview**

The tiered framework helps organizations:

- Align security investment with actual threat levels.
- Reduce risk by implementing appropriate defenses.
- Provide clear, structured decision-making for executives.
- Demonstrate actionable technical improvements even with limited resources.

---

## **Repository Structure**

```

project-repo/
├── report.tex             # LaTeX source of the project report
├── report.pdf             # Compiled PDF of the report
├── images/                # Diagrams and visuals used in the report
│   ├── decision_matrix.png
│   └── phishing_attack_flow.png
├── nmap_scans/            # Output of Nmap scans
│   ├── pre_firewall.png
│   └── post_firewall.png
├── scripts/               # Scripts to reproduce technical demos
│   ├── firewall_setup.sh
│   └── nmap_scan.sh
└── README.md

````

---

## **Getting Started**

### **1. Firewall Setup**

Run the `firewall_setup.sh` script to configure firewall rules for the VM:

```bash
chmod +x scripts/firewall_setup.sh
./scripts/firewall_setup.sh
````

* SSH (port 22) and HTTP (port 80) will remain open.
* All other ports will be blocked.

---

### **2. Nmap Scans**

Run the `nmap_scan.sh` script to perform service and OS detection on the target VM:

```bash
chmod +x scripts/nmap_scan.sh
./scripts/nmap_scan.sh
```

* Generates two output files:

  * `nmap_initial.txt` – service and OS detection scan
  * `nmap_aggressive.txt` – full aggressive scan with scripts

* Place the outputs in `nmap_scans/` for reference.

---

### **3. Report**

* `report.tex` – LaTeX source for the full project report.
* `report.pdf` – compiled PDF ready for submission.

The report includes:

* Tiered framework explanation
* Threat landscape and mitigation strategies
* Decision matrices
* Technical demonstration results

---

## **Notes**

* All scripts assume a Linux-based target (Ubuntu 22.04 LTS tested).
* Ensure you have `ufw` and `nmap` installed.
* Adjust `TARGET_IP` in `nmap_scan.sh` for your environment.

---

## **Author**

Nisha Sarwar
October 2025


