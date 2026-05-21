#!/bin/bash

# Input: command output
# Action: indent each line by 4 spaces
# Reason: format multi-line output

# Usage: command | ./indent.sh

# ---

while IFS= read -r line; do
    echo "    $line"
done
