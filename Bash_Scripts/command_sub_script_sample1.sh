#!/bin/bash

									#####################################
							                        #COMMAND SUBSTITUTION
							                #####################################

#command substitution is basically to save the output of a command inside a variable.
#allows us to run a command inline (in the code) and capture the output of the process.
#for example, if we did a certain arithmatic calculation we can save the value of this calculation inside these command substitutions

#Syntax:
#when we want to define a variable that has the output of a command, we write the command inside parenthesisc() preceeded by a $

count=$(find ./ -name '*.sh' | wc -l) #the output of this command will be saved in variable count
				      #will find all files with extension .sh in current directory (./), counts the lines, and stores the value inside variable count.
echo "There are $count shell scripts here."

allscripts=$(find ./ -name '*.sh') #saves all script names in an array

echo "All the scripts are: $allscripts"

# find path -name '*.sh'


#####################################


#This also works within double quotes ""
#we capture the value of a command without saving it in a variable 

echo "Today is $(date +'%b %e, %Y')"


#####################################


#we can also edit all shell files in this directory
# vim $(find ./ -name '*.sh')
#if we have 5 scripts, we will open all 5 scripts in 5 text editors to edit them.
