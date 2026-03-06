#!/bin/bash

DISK_THRESHOLD=80
#For testing, I set RAM threshold as 25
RAM_THRESHOLD=25         
EMAIL="nagarajkamath602@gmail.com"

# Get usage values
disk_usage=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')
ram_usage=$(free | awk 'NR==2 {print int($3*100/$2)}')
load_avg=$(uptime | awk -F'load average:' '{print $2}')

alert_flag=0

# Check Disk
if [ "$disk_usage" -ge "$DISK_THRESHOLD" ]; then
    disk_status="HIGH"
    alert_flag=1
else
    disk_status="OK"
fi

# Check RAM
if [ "$ram_usage" -ge "$RAM_THRESHOLD" ]; then
    ram_status="HIGH"
    alert_flag=1
else
    ram_status="OK"
fi

# Send email only if any resource is HIGH
if [ "$alert_flag" -eq 1 ]; then
    echo -e "
=========================================
        SYSTEM RESOURCE ALERT
=========================================

Hostname : $(hostname)
IP       : $(hostname -I | awk '{print $1}')
Date     : $(date)

-----------------------------------------
Resource Usage
-----------------------------------------

Disk Usage : ${disk_usage}%  [$disk_status]
RAM Usage  : ${ram_usage}%   [$ram_status]

Load Average (1m, 5m, 15m):
$load_avg

-----------------------------------------
Action Required: Please investigate.
=========================================
" | mail -s "ALERT: Resource Usage on $(hostname)" "$EMAIL"
fi

