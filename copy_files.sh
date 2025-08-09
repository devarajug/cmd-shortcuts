#!/bin/bash


SOURCE_DIR="$(pwd)/Google Photos"
DEST_HOME="$(pwd)/google_images"

#copy all files except json from source to destination 
find "$SOURCE_DIR" -mindepth 2 -type f ! -name "*.json" -exec cp -v {} "$DEST_HOME" \;

echo "All non-JSON files copied from subfolders of '$SOURCE_DIR' to '$DEST_HOME'"
