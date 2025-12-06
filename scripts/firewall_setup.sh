#!/bin/bash

# ----------------------------------------
# Firewall Setup Script (UFW)
# Configures firewall rules for the demo VM
# ----------------------------------------

echo "[*] Updating package list..."
sudo apt update -y

echo "[*] Installing UFW (if not installed)..."
sudo apt install ufw -y

echo "[*] Resetting UFW to default settings..."
sudo ufw --force reset

echo "[*] Setting default firewall policy to deny incoming traffic..."
sudo ufw default deny incoming
sudo ufw default allow outgoing

echo "[*] Allowing essential services..."
sudo ufw allow 22/tcp    # SSH
sudo ufw allow 80/tcp    # HTTP (Apache)

echo "[*] Enabling UFW..."
sudo ufw --force enable

echo "[✓] Firewall setup complete."
sudo ufw status verbose
