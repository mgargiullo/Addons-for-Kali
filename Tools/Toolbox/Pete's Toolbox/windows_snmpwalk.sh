#!/bin/bash

echo -e "Which Host? (last octet): "

read octet

echo "Enumerating 192.168.19."$octet

echo "[+] System"
snmpwalk -c public -v1 192.168.19.$octet 1.3.6.1.2.1.25.1.6.0
echo "[+] Running Programs"
snmpwalk -c public -v1 192.168.19.$octet 1.3.6.1.2.1.25.4.2.1.2
echo "[+] Process Paths"
snmpwalk -c public -v1 192.168.19.$octet 1.3.6.1.2.1.25.4.2.1.4
echo "[+] Storage Units"
snmpwalk -c public -v1 192.168.19.$octet 1.3.6.1.2.1.25.2.3.1.4
echo "[+] Software Name"
snmpwalk -c public -v1 192.168.19.$octet 1.3.6.1.2.1.25.6.3.1.2
echo "[+] User Accounts"
snmpwalk -c public -v1 192.168.19.$octet 1.3.6.1.4.1.77.1.2.25
echo "[+] TCP Local Ports"
snmpwalk -c public -v1 192.168.19.$octet 1.3.6.1.6.13.1.3
echo "[+] Done"
