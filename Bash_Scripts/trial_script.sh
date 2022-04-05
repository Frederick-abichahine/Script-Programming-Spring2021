#!/bin/bash

str=""
str2="hello"

if [ -z "$str2" ]; then #it is crucial to specify the argument BEFORE the variable
	echo "String is empty"
fi

if [ -n "$str2" ]; then
	echo "String is NOT empty"
fi


####################################


if [ -x $1 ]; then # doing [ $1 -x ] will not work, -x must be before it...
	echo "It is executable"
else
	echo "Is is not"
fi


####################################


vat=$(cat BLOSUM.txt)
#echo $vat
