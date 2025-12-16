#!/bin/bash

<< health
Write a shell script that generates a system health report showing:
CPU usage
Memory usage
Disk usage
Uptime
Save the output in a file with today’s date as the filename.
health

today=$(date +%Y-%m-%d)

# Output file
outfile="system_health_$today.txt"

# Start writing report
echo "System Health Report - $today" > "$outfile"
echo "==============================" >> "$outfile"
echo >> "$outfile"

# CPU usage
echo "CPU Usage:" >> "$outfile"
top -bn1 | grep "Cpu(s)" >> "$outfile"
echo >> "$outfile"

# Memory usage
echo "Memory Usage:" >> "$outfile"
free -h >> "$outfile"
echo >> "$outfile"

# Disk usage
echo "Disk Usage:" >> "$outfile"
df -h >> "$outfile"
echo >> "$outfile"

# Uptime
echo "System Uptime:" >> "$outfile"
uptime >> "$outfile"

echo
echo "System health report saved to $outfile"
