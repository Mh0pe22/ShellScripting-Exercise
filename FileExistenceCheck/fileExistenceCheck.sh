#!/bin/bash

<< FileExistOrNot
Write a shell script that checks if a given file exists. If it exists, print "File exists", otherwise print "File not found".
FileExistOrNot

echo "Enter a file name : "

read filename

if find "$HOME" -type f -name "$filename" | grep -q .;
then
    echo "File exists"
else
    echo "File not found"
fi
