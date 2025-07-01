# 🕵️ Cowrie SSH Honeypot on Raspberry Pi

This project implements a **Cowrie SSH Honeypot** on a **Raspberry Pi 3 Model B+** for analyzing attacker behavior in a controlled, monitored environment. Designed as part of a cybersecurity college project, it simulates an SSH service and logs unauthorized access attempts, commands, and malware uploads.

---

## 🔧 Project Goals

- Deploy an SSH honeypot using **Cowrie**
- Attract brute-force and automated SSH attacks
- Log attacker behavior for threat intelligence
- Simulate fake file systems and commands
- Integrate with SIEM (optional: ELK/Splunk)

---

## 🖥️ Setup

### 🔗 Requirements

- Raspberry Pi 3B+ (Raspberry Pi OS Lite 32-bit)
- Python 3.x
- Git
- Virtualenv

### 📜 Installation (Scripted)

```bash
git clone https://github.com/singhharsh77/cowrie-honeypot-pi.git
cd cowrie-honeypot-pi/setup
chmod +x cowrie-install.sh
./cowrie-install.sh
