#!/bin/bash
# ---------------------------------------------
# Script: user_audit.sh
# Author: Clifton Saintfleur
# Purpose: List all users and last login times (anonymized)
# ---------------------------------------------

echo "All system users (anonymized):"
cut -d: -f1 /etc/passwd | sed 's/.*/userX/'

echo ""
echo "Last login times for users (anonymized):"
lastlog | sed 's/^[^ ]*/userX/' | head -n 10

