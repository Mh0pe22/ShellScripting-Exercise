#!/bin/bash

<< sizeCalculator
Write a shell script that takes a directory path as input and prints the total size of all files inside it (including subdirectories).
sizeCalculator

read -p "Enter directory path: " dir

# Check if directory exists
if [ ! -d "$dir" ]; then
    echo "Directory does not exist!"
    exit 1
fi

total_size=$(du -sh "$dir" | cut -f1)

echo "Total size of all files in '$dir': $total_size"
