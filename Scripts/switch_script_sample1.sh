#!/bin/bash

									#####################################
											#SWITCH
									#####################################

#switch case is similar to the if/else statement but requires less typing

#this first step of the code is always to check if the usage of the argument/s is correct or not
if [ $# -ne 2 ]; then #if number of argumenrs is not equal to 2 then enter this statement 
	echo "Usage: $0 [-f|-d|--directory] <something>" >&2 # $0 indicates the script (invokes the script), after the script we have 3 different options to use
	                                                     #... either -f or -d or --directory. We specify these to indicate to the user that they can use either one
							     # of the options as an argument after the script name..and we have after it something. This something 
							     # is basically gonna be the name of the file or directory 
	exit 1 #if we do not put this exit 1 here the code will keep running and we will get errors in the code below...so we use this to exit.
fi

#the block of code before this comment is to make sure that the user puts the correct input/ uses the correct usage.

case $1 in # $1 takes the first argument after script name, which will be in thic case -f or -d or --directory
	   #we do this in order to reduce typing, and not write so many if statements

	-f) #first option of switch case; we should always put ) to declare end of condition. 
	    #this statement is similar to writing: if [ $1 = "-f" ]
	if [ -f $2 ]; then #this if statement checks if the file exists or not. (Notice how -f is before the argument variable)
		echo "working on file: $2"
	else
		echo "file does not exist!"
	fi
	;; #these ;; indicate the end of of the switch case statement option

	-d | --directory) #this statement is similar to writing: if [ $1 = "-d" | $1 = "--directory" ]
	
	if [ -d $2 ]; then #this if statement checks if the directory exists or not.
		 echo "working on directory: $2"
	else
	         echo "directory does not exist!"
	fi
	;;

	*) #this is the default case; It is similar to the else
	   #this indicates if the user inputs something other than -f or -d or --directory as $1 in this case
	echo "Usage: $0 [-f|-d|--directory] <something>" >&2
        #we do not have ;; over here as this is the last switch case
	#we do not need to use exit here since no other lines of code would be interpreted => no need to exit

esac #similar to closing if with fi, we close case with esac which is case in reverse


