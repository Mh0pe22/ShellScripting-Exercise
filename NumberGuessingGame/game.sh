#!/bin/bash

<< game
Write a shell script that generates a random number between 1–50.
Ask the user to guess the number until correct.
Print "Too high" or "Too low" as hints.
game

min=1
max=50

num=$(( RANDOM % (max -min + 1) + min))


while true; do
    read -p "Enter a number between $min and $max for guessing: " number
    
    if (( number == num ));
    then
        echo "You have guessed the right number!"
        break
    elif (( number < num ));
    then
        echo "Too low"
    else
        echo "Too high"
    fi
done
