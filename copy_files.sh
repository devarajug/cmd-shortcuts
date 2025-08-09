#!/bin/bash

# Get current working directory and user home directory
CURRENT_DIR="$(pwd)/Google Photos"
USER_HOME="$(pwd)/google_images"

echo "Current directory: $CURRENT_DIR"
echo "User home directory: $USER_HOME"

# Find and copy all non-JSON files from subdirectories
find "$CURRENT_DIR" -mindepth 2 -type f ! -name "*.json" -exec cp -v {} "$USER_HOME" \;

echo "All non-JSON files copied from subfolders of '$CURRENT_DIR' to '$USER_HOME'"
