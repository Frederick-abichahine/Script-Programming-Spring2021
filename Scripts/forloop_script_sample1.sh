#!/bin/bash

                                                                        #####################################
										      #FOR LOOP
                                                                        #####################################

#####################################
echo
echo "-----------"
echo "FOR LOOP 1"
echo "-----------"
echo

for x in "starting in" 5 4 3 2 1 blastoff!  #we simply list the values for x, x will iterate through all these values until it reaches the end.
		                 	    #we do not care about the type of x, it can be anything, we can mix numbers and characters.
do #indicates start of for loop
	echo $x #will print out all the values of x one by one in order
done #indicates the end of the for loop


#####################################
echo
echo "-----------"
echo "FOR LOOP 2"
echo "-----------"
echo

#To specify a range for the for loop we can put curly brackets {} and use .. between the two numbers to indicate all numbers betweeen

for x in {1..10}; do #similar to the if statement, we can also put the do on the same line by putting ; before it
	echo $x
done


#####################################
echo
echo "-----------"
echo "FOR LOOP 3"
echo "-----------"
echo

#we can also use globbing (wild cards) to get a collection of files

echo "Lising all shell scripts:"

for x in *.sh; do #because we are not specifying any path, this will take the actual path
	echo $x #displays all scripts in current directory that have .sh
done


#####################################
echo
echo "-----------"
echo "FOR LOOP 4"
echo "-----------"
echo


list=("apple" "orange" "kiwi")
echo "Length of array is: ${#list[@]}" #this prints the length of the array; without the # it will print all the array
echo "Elements in array are: ${list[@]}"

echo
echo "WAY 1"
echo

for x in {0..2}; do
	echo ${list[x]}
done

echo
echo "WAY 2"
echo

for x in ${list[@]}; do
	echo $x
done

