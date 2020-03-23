#!/bin/bash

clear
cont="y"
ans=0

echo "Enter 1st no:"
read n1

echo "Enter 2nd no:"
read n2

while [ $cont = "y" ]
do	
	clear
	echo "Numbers are $n1 and $n2"
	echo "----Enter your Choice----"
	echo "1.Addition"
	echo "2.Subtraction"
	echo "3.Multiplication"
	echo "4.Division"
	echo "5.Modulus"
	
	read ch
	case $ch in
		1)ans=`expr $n1 + $n2`
			echo "Sum="$ans;;
		2)ans=`expr $n1 - $n2`
			echo "Difference="$ans;;
		3)ans=`expr $n1 \* $n2`
			echo "Product="$ans;;
		4)ans=`expr $n1 / $n2`
			echo "Quotient="$ans;;
		5)ans=`expr $n1 % $n2`
			echo "Modulus="$ans;;
		*)echo "Invalid Input";;
	esac
	echo "Do you want to continue?(y/n)"
	read cont
	
	if [ $cont != "y" ]
	then
		exit
	fi
done

