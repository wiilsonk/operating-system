#!/bin/bash

echo "System Health Snapshot"
echo "----------------------"
echo "Date & Time: $(date)"
echo "Hostname: $(hostname)"
echo "Current User: $(whoami)"

df -h / | awk 'NR==2 {print "Disk Usage: "$4" free out of "$2}'
