#!bin/bash

<< log
Write a shell script that analyzes a log file and prints:
The top 5 most common IP addresses
The number of failed login attempts
log

read -p "Enter log file path: " logfile

# Check if file exists
if [ ! -f "$logfile" ]; then
    echo "Log file does not exist!"
    exit 1
fi

echo "Top 5 most common IP addresses:"
# Extract IP addresses and count occurrences
grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}' "$logfile" | \
    sort | uniq -c | sort -nr | head -5

echo
echo "Number of failed login attempts:"
# Count failed login attempts (common pattern: "Failed password")
grep -i "failed password" "$logfile" | wc -l

