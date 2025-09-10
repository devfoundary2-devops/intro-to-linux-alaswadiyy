#!/bin/env bash

while true; do
  echo "--- $(date) ---" >> /var/log/sysmon.log
  echo "CPU: $(uptime)" >> /var/log/sysmon.log
  echo "MEMORY:" >> /var/log/sysmon.log
  free -h >> /var/log/sysmon.log
  echo "DISK:" >> /var/log/sysmon.log
  df -h / >> /var/log/sysmon.log
  echo "NET:" >> /var/log/sysmon.log
  ip link | grep eth0 >> /var/log/sysmon.log
  sleep 300
done
