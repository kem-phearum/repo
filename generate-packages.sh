#!/bin/bash

# Regenerate Cydia Repository Files
cd "$(dirname "$0")" || exit

# Compress Packages file to Packages.bz2
echo "Compressing Packages file..."
bzip2 -kf Packages

echo "Done! Repository files updated."
echo ""
echo "Files:"
ls -lh Packages*
