#!/bin/bash

# Iterate through all files in the repository
git ls-files -z | while read -d '' file; do
  # Check if the file is an image (adjust extensions as needed)
  if [[ "$file" =~ \.(jpg|jpeg|png|gif|tiff|bmp)$ ]]; then
    # Use exiftool to remove all metadata
    exiftool -all= "$file"
  fi
done
