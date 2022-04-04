#!/bin/bash

								        #####################################
									               #SOURCE
									#####################################

#It is always better to have your code split into different file; every function should be written in its own script since it reduces the load from having everything
#in one main script, makes it easier to fix or get what you are looking for, and it allows us to reuse code somewhere else (exactly the same as classes and methods in
#other languages we used). 
#In order to make these functions available inside your code, you can use the "source" command.
#the source command reads the commands from a specified file and executes them in the current shell.
#this is used often in shell initialization scripts to load in other scripts for evaluation.
#source will basically allow us to use other functions as if we wrote that function inside our main script...

if [ -r input_output_script_sample1.sh ]; then #this checks if the file is readable, if it is then we source it...
	source input_output_script_sample1.sh
fi

#this will bring the shell script "input_output_script_sample1.sh" and execute it here as if it were part of this script...
#we can add elif for another file, or else if we want to add an error statement/warning that the file does not exist etc...

#we can specify the directory to the file as well, however we did not here since this script is found in the bin, thus can be executed anywhere
#also, we can use the ./ 

