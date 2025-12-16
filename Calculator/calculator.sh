#!/bin/bash

<< calculator
Write a shell script that shows a menu:
1. Addition  2. Subtraction  3. Multiplication  4. Division
Takes two numbers as input and performs the selected operation.
calculator

read -p "Enter a first number : " number1
read -p "Enter a second number : " number2

read -p "Enter 1 for addition , 2 for subtraction , 3 for multiplication and 4 for division " op

case "$op" in 
	1)
		echo "Addition of $number1 and $number2 is $((number1 + number2))"
		;;
	2)
		echo "Subtraction of $number1 and $number2 is $((number1 - number2))"
		;;
	3)
		echo "Multiplication of $number1 and $number2 is $((number1 * number2))"
		;;
	4)
		echo "Divison of $number1 and $number2 is $((number1 / number2))"
		;;
esac
