#!/bin/bash
# ---------------------------------------------
# Script: backup.sh
# Author: Clifton Saintfleur
# Purpose: Backup a directory with timestamp
# ---------------------------------------------

# Ask user for source directory
read -p "Enter the directory to backup: " source_dir

# Ask user for backup destination
read -p "Enter the backup destination directory: " backup_dir

# Safety check
if [ ! -d "$source_dir" ]; then
  echo "Source directory does not exist. Exiting."
  exit 1
fi

# Create backup destination if it doesn't exist
mkdir -p "$backup_dir"

# Generate timestamp
timestamp=$(date +%Y%m%d_%H%M%S)

# Backup command
cp -r "$source_dir" "$backup_dir/backup_$timestamp"

echo "Backup complete: $backup_dir/backup_$timestamp"
