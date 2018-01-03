#!/bin/bash

echo "[+] Enumerating 192.168.19.203"
  snmpcheck -t 192.168.19.203
echo "[-] Done with 192.168.19.203"

echo "[+] Enumerating 192.168.19.204"
  snmpcheck -t 192.168.19.204
echo "[-] Done with 192.168.19.204"

echo "[+] Enumerating 192.168.19.227"
  snmpcheck -t 192.168.19.227
echo "[-] Done with 192.168.19.227"

echo "[+] Done"
