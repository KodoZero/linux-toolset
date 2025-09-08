#!/bin/bash
# ---------------------------------------------
# Script: system_info.sh
# Author: Clifton Saintfleur
# Purpose: Display key system information
# ---------------------------------------------

# Display hostname
echo "Hostname: $(hostname)"

# Display current user
echo "Current User: $(whoami)"

# Display system uptime
echo "Uptime:"
uptime -p

# Display memory usage
echo "Memory Usage:"
free -h

# Display disk usage
echo "Disk Usage:"
df -h | grep '^/dev/'
