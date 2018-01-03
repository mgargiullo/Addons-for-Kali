#!/bin/bash

## this is a really dumb hack, but I just want to check the open ports >.<
# Ideally I would do some kind of loop ... but that requires time and testing :/

echo "Starting scan..."

nmap -v -p 135,139,445 --script=smb-check-vulns --script-args=unsafe=1 192.168.19.201 > windows_smb_vulns.log
nmap -v -p 135,139,445 --script=smb-check-vulns --script-args=unsafe=1 192.168.19.205 >> windows_smb_vulns.log
nmap -v -p 135,139,445 --script=smb-check-vulns --script-args=unsafe=1 192.168.19.206 >> windows_smb_vulns.log
nmap -v -p 135,139,445 --script=smb-check-vulns --script-args=unsafe=1 192.168.19.218 >> windows_smb_vulns.log
nmap -v -p 135,139,445 --script=smb-check-vulns --script-args=unsafe=1 192.168.19.220 >> windows_smb_vulns.log
nmap -v -p 135,139,445 --script=smb-check-vulns --script-args=unsafe=1 192.168.19.223 >> windows_smb_vulns.log
nmap -v -p 135,139,445 --script=smb-check-vulns --script-args=unsafe=1 192.168.19.227 >> windows_smb_vulns.log
nmap -v -p 135,139,445 --script=smb-check-vulns --script-args=unsafe=1 192.168.19.230 >> windows_smb_vulns.log
nmap -v -p 135,139,445 --script=smb-check-vulns --script-args=unsafe=1 192.168.19.245 >> windows_smb_vulns.log

echo "Done."

