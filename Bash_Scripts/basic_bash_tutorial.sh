#!/bin/bash

#You should always start your script/code with that header; it indicates which interpreter in going to execute the commands below.
#without that header, it will use the default on the shell terminal, check extension .sh etc...


                                                                        #####################################
									     #Basic Bash Tutorial - Notes													                                            #####################################


#To run the script on the terminal, type bash file_name.sh   // not only bash, can use zsh etc...

duration=30
artist=Baauer
song="Harlem Shake"
cart=(apples oranges bananas)
cart2=("apples oranges" bananas)

echo $duration
echo ${duration} #we can either put the name of variable directly after the $ or we can use put them in {} after the $ => same thing

#printing out scalal - curlys optional
echo $song by ${artist}

#printing out an array - curlys required
echo ${cart[0]} #this prints the element at index 0, the first element in the array
echo ${cart2[0]}

#to print the whole array we have 2 ways:
echo ${cart[*]}
echo ${cart[@]}
echo ${#cart[@]}  #this will give us the array length

#single quotes don't interpolate => does not optain value of the variable => you get the string literally as you wrote it...
str1='$song by ${artist}'
echo $str1

#double quotes does interpolate => the interpreter will get the values of the variables inside the mother variable...
str2="$song by ${artist}"
echo $str2


#####################################


str="Harlem Shake by Baauer"

#to get string length
echo ${#str}

#to get a substring
echo ${str:7} #this prints the str string starting from position 7
echo ${str: -6} #this starts from the end and counts backwards, starts from -6 positions from the end till the end
echo ${str:7:5} #this also starts at position 7 and prints only 5 characters, inclusing position 7...lenght will be 5 characters

#to eliminate a letter (hack off a letter)
echo ${str#?} #hacks off / eliminates the first character in the string
echo ${str%?} #hacks off / eliminates the last character in the string

#to search and replace
echo ${str//Harlem/UMBC} #this searches for the world Harlem and replaces it with UMBC
echo ${str//Harlem} #this will searcg and eliminate without replacing
echo $str  #shows that it is not permanent

#to concatenate strings
str3="Snowed in doing the $str"
echo $str3


#####################################


		#Environment Variables

#These are variables defined by the system; every variable we are writing in our code will be defined within the script we are using; however, there are some
#default variables on the system such as $PATH $SHELL etc...
#Everytime a variable is in uppercase this means that it is an environment variable => when defining your variables dont use UPPERCASE

# $HOME --> prints your home directory
echo "Your home directory is: $HOME"

# $HOSTNAME --> prints the host name you are logged into
echo "You are logged into: $HOSTNAME"

# $SHELL --> prints your current working shell, the shell you are using like bash, sh, zsh etc...
echo "Your shell is: $SHELL"

# $PATH --> prints the entire path up to your working directory
echo "Your path is: $PATH"

# $TERM -->
echo "Your terminal is set to: $TERM"


#####################################


		#Command Line Arguments

#to access name of the script, type this inside of the script
echo "Your script name is: $0" # $0 will always return the name of the script

#to count number of arguments passed to the script
echo "number of arguments is: $#"

#In order to send arguments to a script file, you type ./file_name.sh arg1 arg2 arg3    or    bash file_name.sh arg1 arg2 arg3
#The arguments are separated by space

echo "arg1: $1" #these will print whatever that argument is, $1 prints first argument, $2 second, $3 third etc.... until $n
echo "arg2: $2"

echo "Your array of arguments is: $@" #this will display the whole array of arguments  // can also use $*


#####################################


		#More variable tricks

echo "$song by ${artist}"

#assigns empty string (one way to delete a variable is to assign it to nothing); this way does not remove from memory
song=
echo "$song by ${artist}"

#Another way to remove, which removes all together, removes variable from memory
unset song #unset deletes the variable completely
echo "$song by ${artist}"

#to define a variable as read only, when we assign it to read only we will no longer be able to modify it later on. We can no longer unset it as well!
readonly artist
artist="Hootie" #This wont work and will display an error, since artist is now readonly and we can NOT redefine it anymore
echo "$song by ${artist}"

#we notice that even if we have an error, we are still able to interpret everything else since scripting is interpreted and NOT compiled
#If it were compiled, we wont be able to run the code if an error exists
echo $artist


#####################################


		#Special Variables

#we have the process ID (PID) and the parent PID (PPID)

#PID can be printed using the $$
#PPID can be printed using $PPID

#These are important if you are running a server or a complicated code amd we can set a timer.
#Example: we want to kill any code that runs for >4 hours without having to manually monitor the code
#in order to do that we need to know the PID of that code we are running

#we can use a command called "top" and it will tell us what are the processes running and we can see the PID on the left side.
#we need that PID to kill that certain job

echo "Process ID (PID) is: $$"
echo "The Parent PID (PPID) is: $PPID"

#Other special commands
#we can use "cal month year" in order to get the calander of that month in that year

#if we want to execute a shell command within the double quotes ""/ within the string itself, we use single quotes ''
#example:
cal 3 2021
echo "cal 3 2021 exited with a status $?" #will print literally
echo "'cal 3 2021' exited with a status $?" #will print the '' literally also, will NOT be executed
cal 0 2021 #if we put "cal 0 2021" on the terminal we will get an error (no month can be 0) and the line below will display the $? which will be 64 in this case
echo "'cal 0 2021' exited with a status $?"

#the $? will tell you whether the previous command written directly before had a status 0 or >0 
#status 0 means that the command directly before executed without any error
#status 1 (or >0) means that it executed with an error


#####################################


		#Globbing

#The operators here are a little bit different than the regular expression
# ? = will match any 1 wildcard in this position (similar to the dot "." in regex)
# * = will match any number of wildcards in this position (does not mean character before is repeated 0 or x amount of time, unlike regex)
# {_,_,_} = will match anyone of the set; will give options ex: ls sam*.{sh,txt} --> will match all that have sam, followed by any number of wildcards, then txt and sh files
#it is like using parenthesis () with pipe (or option) in regex

#any command that we can run on the terminal, we can also execute it from within a shell script
echo "--- ls -l c* ---"
ls -l c*
echo "--- ls -l f*.{sh,txt} ---"
ls -l f*.{sh,txt}


#####################################


		#Properties and changing mod

#when we type "ls -l" we get something similar to -rwxrw-r-- etc...
#The first character indicates if it is a directory (d) or not (-)
#r= read, w= write, x= execute
#the first 3 characters after d or - (rwx)/(rw-)/(r-x) etc.. are the properties and permissions for the User (u)
#the second 3 characters are the properties and permissions for the Group (g)
#the last 3 characters are the properties and permissions for all other users (o)

#we use the command "chmod" change mode in order to change properties and permissions
#example: if we use chmod u+x file_name.txt   --> this will add execute property to the user
# + will add properties
# - will remove properties
# chmod uo+rx file_name.txt --> will add execute properties to both the user and others

#to differentiate between a script and a text file, you should make the script executable in order to run it without calling any other program.
#a script without the executable property is just like a text file.


#####################################


		#Streams and Redirection

#We have 3 main streams:
# 1) stdin: (standard input) This is where a program gets its input from
# 2) stdout: (standard output) This is where a program writes standard output
# 3) stderr: (standard error) This is where the program writes exceptional output

#In order to redirect Input/Output:
# 1) < source: This indicates read from source
# 2) > destination: This indicates write to a file (Creat file) (will override if file exists)
# 3) >> destination: This indicates append to a file (or creates a file if it does not exist)


#####################################


		#Pipes in a script

#A pipe allows us to take the output from the first command and pass it as an input to the second command
strr="Hello World"
echo -n "Length of '$strr' = "
echo -n $strr | wc -c

echo -n "Number of files in account >10KB = "
find ~ \
	-type f \
	-size +10k | \
wc -l
#the backslash here indicates that the command is not executed yet; It allows us to specify the arguments one at a line
#backslash indicates command not finalized yet.


#####################################


		#tee command

#this "tee" command will allow us to split the output
#it splits the stdout into 2 streams, one continues with stdout (prints od screen) and the other goes into a file.
#It is mainly useful if you want to see the results of the output and save them in a file as well for later reffernece.

#example: 
# ls -l | tee fileList.txt
#this will list on the terminal the files/folders, and it will write them to a file.
# ls -l > fileList.txt
#without using the tee command, we wont display aything on the terminal, only direct output to a file.


#####################################


		#xargs command

#this is used to invoke commands with command line arguments that are derived from input stdin.
#executes the commands in parallel, instead of going sequentially.
ls s* | xargs wc -c
#basically, it will take the command after it (wc -c in this case) and it will execute it in parallel to all the inputs.
#in this example, we are listing all the file names that start with an s, pipe it to xargs and executing the wc -c command on it.
#so, every file that starts with an s it will run on it the wc -c command and displays bytes.
#this is mainly useful if you want to run the same command or script on multiple of files.

#ls *.sh | xargs bash 
#this will execute all the bash files in parallel
#left this as a comment since it will loop infinitely!!!


								#####################################
									#Control Structures
								#####################################


		#the test command

#the test command tests a conditional expression and it can be used in two forms (Explicitly or using brackets [])
#explicitly: we write test followed by the condition
#ex: test expression
#using square brackets: without putting test explicitly (include white space after opening [ and before closing ]) 
#ex: [ expression ]      #WHITE SPACE IS CRUCIAL!!!!!!!
#it is preferable to use [] rather than test since it will allow you to see the condition better
#in java (system programming languages)we use normal parenthesis () in which we insert the condition inside of them in an if statement, while loop etc... 
#but here we use sqaure brackets [] instead.


#####################################


		#Numerical (scalar) Operators

#these are operators that we use in order to look for equality, whenever we are comparing numbers

# -eq     (equal)
#to check if a varaible is equal to this number, we do not use ==, but rather -eq
#ex: variable_a -eq 2

# -ne     (not equal)
#the opposite of -eq
#ex: a -ne 3

# -gt     (greater than)
#ex: a -gt 4   (like saying a > 4)

# -ge (greater than or equal)

# -lt     (less than)

# -le     (less than or equal)


#####################################


		#String Operators

#these are operators that are relatively used when we want to comapre strings and text

# =      (equal) (== to check if equal)
#used to compare strings and see if they are equal
#ex: string1 = string2

# !=     (not equal)

# -z     (is it the empty string; zero length)
#checks if the string has a length of 0, thus being empty

# -n     (NOT empty string; opposite to -z)
#checks if the string has a certain value to it, and not empty


#####################################


		#File Operators

# -e
#used to check if a file/resource exists

# -f
#used to check if the resource/file is indeed a file and not a directory

# -d
#used to check if the resource/file is a directory and not a file

# -r
#used to check if the resource/file is readable

# -w
#used to check if the resource/file is writeable

# -x
#used to check if the resource/file is executable

# -s
#used to check if the resource/file has a non-zero size; checks if it is not empty


#####################################


		#Logical Operators

#used in case we would like to combine multiple conditions at the same time 

# -a  
#this is the "and" operator  (can use &&)

# -o
#this is the "or" operator (can use ||)

# !
#this is the negation, the "not"

# \(  \) 
#parenthesis to disambiguate grouping (we must escape parenthesis in order to use them)


#####################################

#Everything else present in independent scripts (such as if/then/else, while loops, for loops, grep, awk, sed etc...)
