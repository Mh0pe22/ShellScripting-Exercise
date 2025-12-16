#!/bin/bash

<< accountlocking
Write a shell script that checks for users who haven’t logged in for the last 30 days and locks their accounts.
accountlocking

INACTIVE_DAYS=30

# Loop through all regular users (UID >= 1000)
for user in $(awk -F: '$3 >= 1000 {print $1}' /etc/passwd); do
   
 # Get last login in days using 'lastlog'
    last_login_days=$(lastlog -u "$user" | awk 'NR==2 {print $4,$5,$6}')

    if [[ -z "$last_login_days" || "$last_login_days" == "**Never logged in**" ]]; then
        echo "User $user never logged in. Locking account."
        sudo usermod -L "$user"
        continue
    fi

    # Convert last login date to days since epoch
    last_login_sec=$(date -d "$last_login_days" +%s)
    today_sec=$(date +%s)
    diff_days=$(( (today_sec - last_login_sec)/86400 ))

    if (( diff_days > INACTIVE_DAYS )); then
        echo "User $user inactive for $diff_days days. Locking account."
        sudo usermod -L "$user"
    fi
done
