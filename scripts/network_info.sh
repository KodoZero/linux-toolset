#!/bin/bash
# ---------------------------------------------
# Script: network_info.sh
# Author: Clifton Saintfleur
# Purpose: Display network info (anonymized IPs)
# ---------------------------------------------

# Display network interfaces
echo "Network Interfaces:"
ip addr show | sed -E 's/inet [0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/inet xxx.xxx.xxx.xxx/g'

# Display IP addresses
echo ""
echo "IP Addresses:"
hostname -I | sed -E 's/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/xxx.xxx.xxx.xxx/g'

# Display open ports
echo ""
echo "Open Ports:"
ss -tuln


