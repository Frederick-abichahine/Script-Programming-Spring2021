#!/bin/bash

read -p "Enter first num: " num1
read -p "Enter second num: " num2
read -p "Enter third num: " num3

if [ num1 -gt num2 ];then
	echo '1 > 2'

elif [ num1 -gt num3 ];then
	echo '1 > 3'

fi
