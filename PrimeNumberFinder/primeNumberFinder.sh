#!/bin/bash

<< primeNumber
Write a shell script that prints all prime numbers between 1 and 100.
primeNumber

#!/bin/bash

read -p "Enter the limit: " n

for ((i=2; i<=n; i++)); 
do
    prime[$i]=1
done

for ((i=2; i*i<=n; i++));
do
    if (( prime[i] == 1 ));
    then
        for ((j=i*i; j<=n; j+=i));
       	do
            prime[$j]=0
        done
    fi
done

# Print prime numbers
echo "Prime numbers up to $n:"
for ((i=2; i<=n; i++));
do
    if (( prime[i] == 1 )); 
    then
        echo -n "$i "
    fi
done
echo

