#!/bin/bash

									#####################################
										# IF / THEN / ELSE
									#####################################
if [ $# -ne 1 ]
then
	echo "Usage: $0 <age>" >&2 #this >&2 redirects to stderr; it will write a log file of the errors that you have
	exit 1
fi #used to close the if statement; we tend to write it in reverse if fi 


#####################################


age=$1 #passing the first argument to variable age

if [ $age -lt 18 ]; then
	echo "Soft Drink?"
elif [ $age -ge 18 -a $age -lt 21 ]; then
	echo "Smoke?"
else [ $age -ge 21 ]
	echo "Drink?"
fi

#we can either put "then" on a new line, or on the same line of if/elif by putting a ; before it.

#####################################

