#!/bin/bash

# -------------------------------------------------
# Nmap Scan Script
# Runs service/version + OS detection on a target VM
# -------------------------------------------------

TARGET_IP="192.168.122.183"

echo "[*] Running basic service + OS detection scan..."
sudo nmap -sV -O $TARGET_IP -oN nmap_initial.txt

echo "[*] Running aggressive scan (-A)..."
sudo nmap -A $TARGET_IP -oN nmap_aggressive.txt

echo "[✓] All scans complete."
echo "[*] Output saved to:"
echo "    nmap_initial.txt"
echo "    nmap_aggressive.txt"
