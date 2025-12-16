#!/bin/bash

<< UserInput
Write a shell script that asks the user for their name and then prints:
Hello <name>, welcome to shell scripting!
UserInput

echo "Enter your name : "

read name

echo "Hello $name, welcome to shell scripting!"
