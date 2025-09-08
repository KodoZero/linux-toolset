#!/bin/bash
# ---------------------------------------------
# Script: file_cleaner.sh
# Author: Clifton Saintfleur
# Purpose: Delete temporary .tmp files in a specified directory
# ---------------------------------------------

# Ask the user for the directory to clean
read -p "Enter the full path of the directory to clean: " target_dir

# Safety check: make sure directory exists
if [ ! -d "$target_dir" ]; then
  echo "Directory does not exist. Exiting."
  exit 1
fi

# Show files that will be deleted (preview)
echo "Files to be deleted:"
find "$target_dir" -type f -name "*.tmp"

# Confirm deletion
read -p "Are you sure you want to delete these files? (y/n): " confirm
if [ "$confirm" != "y" ]; then
  echo "Aborting."
  exit 0
fi

# Delete the .tmp files
find "$target_dir" -type f -name "*.tmp" -exec rm {} \;

echo "Cleanup complete."
