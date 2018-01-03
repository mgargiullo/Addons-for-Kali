#!/bin/bash

## this is a really dumb hack, but I just want to check the open ports >.<
# Ideally I would do some kind of loop ... but that requires time and testing :/

echo "Starting scan..."

nmap --version-all 192.168.19.201 > windows_host_ports.log
nmap --version-all 192.168.19.205 >> windows_host_ports.log
nmap --version-all 192.168.19.206 >> windows_host_ports.log
nmap --version-all 192.168.19.218 >> windows_host_ports.log
nmap --version-all 192.168.19.220 >> windows_host_ports.log
nmap --version-all 192.168.19.223 >> windows_host_ports.log
nmap --version-all 192.168.19.227 >> windows_host_ports.log
nmap --version-all 192.168.19.230 >> windows_host_ports.log
nmap --version-all 192.168.19.245 >> windows_host_ports.log

echo "Done."

