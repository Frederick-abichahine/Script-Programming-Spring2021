#!/bin/bash

                                                                        #####################################
				                     				     #WHILE LOOP
									#####################################

#while loop is similar to the for loop
echo
echo "-----------"
echo "WHILE LOOP"
echo "-----------"
echo

while [ $# -gt 0 ]; do

	case $1 in #switch case within while loop
		
		-v)
		verbose=true
		;;

		-l)
		long=true
		;;

		-f) #if first argument $1 is -f, we are setting the file name =$2 and we are doing a shift...   
		file=$2 #sets the file name to be whatever is in second argument $2
		shift #shift decreases the number of arguments by 1, which will eventually reach 0 and stop looping due to while condition (removes first argument)
		;;

		-*) #when the option is - followed by anything other than v l or f we enter here
		echo $1 is an unrecorgnized option >&2
		;;

		*) #when the option is invalid, we enter here; option without a -
		break #breaks out of the while loop and NOT the entire script...different than command exit that exits the script
		;;

	esac #end of switch statement

	shift #we shift again to reduce number of arguments (removes first argument) ex: while.sh -v -l   becomes while.sh -l  ($2 becomes $1, $3 becomes $2 etc...)

done #end of while loop

if [ $verbose ]; then
	echo "Script being run in verbose mode"
fi

if [ $long ]; then #we do not use elif, rather we use if here because more than one conditions can be true... since we can specify multiple arguments ex: while.sh -v -l
	echo "Long options selected"
fi

if [ $file ]; then
        echo File $file specified
fi

if [ $# -gt 0 ]; then
        echo Remaining command line args: $* # $* will print out all the remaining arguments left
fi

