#!/bin/bash

                                                                        #####################################
									           #INPUT - OUTPUT
									#####################################

#so far we managed to take the input from the user from the command line by specifying the arguments
#now we can also read the input from a file and we are going to write to a file / take input from user (The script itelf will be interactive)
#The script will ask the user to enter a certain value or password etc...

#the "read" command is used to get input from a user. It captures whatever the user is typing on the keyboard
#read will save whatever the user types directly in the script. We can also save it in a variable.

echo "Press Enter to continue..."
read                                    #This will wait til the user presses Enter (you can type anything, but it will only move forward after you press Enter). 
					#"read" without any arguments is good for something like this.
echo "Done!"
echo

#We can aslo get a normal input:

read -p "Please enter yes or no: " ans  # -p will print the specified prompt, it will print on the terminal what we want (in this case "Please enter yes or no:")
					#whatever the user enters will be saved in the variable after it outside the "", called "ans".
					#It will wait for the user to enter something and to press enter to save it inside variable "ans"

while [ $ans != "yes" -a $ans != "no" ]; do #This while loop is extra, it is here to make sure the user enters yes or no only!!
	echo
	echo "Invalid input, enter yes or no only!"
	echo
	read -p "Please enter yes or no: " ans
done

echo "Your answer was: $ans"
echo

#in the above format, the user can see what they are typing; However, if you want to capture something (like a password) in a silent way which means that the user
#will be typing on the keyboard but no characters will appear on the terminal (can not see what they are writing).

#for this we can use the "-s" command which basically means silent...

read -s -p "Please enter password: " pass  #notice how -s is before -p, or else it will give an error
					   # -p should NOT have any other command after it, only what it must print =>   -p "..."
echo "Your password is: $pass"
echo

#we can also have a timeout
# -t <seconds>
# -t will specify the number of seconds for the timeout.

time=10
echo "Starting X in $time seconds"
echo "Press Enter to continue, ^C to abort..."
read -t $time  #here we are specifying a timeout request 
echo "Starting X"

#sometimes files and scripts can be very large, and the files to be written and saved might require a few seconds (by the time you write to a file and it is saved it 
#might take 1-2 seconds if the file is very large). => if within the script you are dealing with a file that is very large (writing to it, opening it, closing it etc..)
#sometimes before you start executing another command it might be good to wait, to let your script wait for a few seconds so that the file is created and to move on...
#if you execute the commands sequentially, it MIGHT tell you that the file does not exist because it was not written because the interpretter is very very fast whereas
#the standard input and output are the slowest in any programming language. => by the time you write to the file and the file is there and you can access it again there
#might be a latency of few miliseconds, 1 second, or even 2 seconds... => to avoid any errors, after you write to a file you might put a timeout/latency of 2-3 seconds
#and after that you continue and execute the remaning commands... 


############################################


time=15
read -s -t $time -p "You have $time seconds to enter the secret password..." word
if [ -n "$word" ]; then
	echo "Welcome to the secret cave..."
else
	echo "You failed..."
fi

#"echo -n" will allow us to continue writing on the same line, without moving to a new line
