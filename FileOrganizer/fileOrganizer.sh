#!/bin/bash

<< fileOrganizer
Write a shell script that organizes all files in a directory into folders based on their extensions. Example:	
	file1.txt → txt/
	file2.jpg → jpg/
fileOrganizer

dir=${1:-.}

# Loop through all files in the directory
for file in "$dir"/*;
do
    # Skip if not a regular file
    [ -f "$file" ] || continue

    # Extract file extension
    ext="${file##*.}"

    # Skip files without extension
    [ "$ext" != "$file" ] || continue

    # Create directory if it does not exist
    mkdir -p "$dir/$ext"

    # Move file into the directory
    mv "$file" "$dir/$ext/"
done

echo "Files have been organized by extension!"
