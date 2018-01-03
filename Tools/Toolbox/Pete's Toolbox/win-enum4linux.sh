#!/bin/bash

## [Insert laziness disclamer here]

echo "Starting enum4linux"

enum4linux -a 192.168.19.201 > enum4linux-ALICE.txt
enum4linux -a 192.168.19.205 > enum4linux-ORACLE.txt
enum4linux -a 192.168.19.206 > enum4linux-IS-ORACLE2.txt
enum4linux -a 192.168.19.218 > enum4linux-WIN7.txt
enum4linux -a 192.168.19.220 > enum4linux-MASTER.txt
enum4linux -a 192.168.19.223 > enum4linux-JEFF.txt
enum4linux -a 192.168.19.227 > enum4linux-SRV2.txt
enum4linux -a 192.168.19.230 > enum4linux-KEVIN-PC.txt
enum4linux -a 192.168.19.245 > enum4linux-HELPDESK.txt

echo "Done"
