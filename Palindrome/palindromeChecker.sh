#!/bin/bash

# (#) is length operater

<< palindrome
	Write a shell script that checks whether a given string or number is a palindrome.
palindrome

read -p "Enter a string: " str

len=${#str}
isPalindrome=1

for ((i=0; i<len/2; i++));
do
    if [[ "${str:i:1}" != "${str:len-i-1:1}" ]];
    then
        isPalindrome=0
        break
    fi
done

if (( isPalindrome == 1 ));
then
    echo "Palindrome"
else
    echo "Not a palindrome"
fi
