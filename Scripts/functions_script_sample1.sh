#!/bin/bash

									#####################################
                                                                                      #FUNCTIONS
                                                                        #####################################

#If you want to define your own function inside the shell, we can directly define it by giving it its name, putting (), and then opening { then close at the end }
#=> a function is denoted by parenthesis and curl brackets (){...} 
#we do NOT have return types, we do not return anything 
#function invokation does not have parenteis (), so when you want to call the function we do not put () after the name, we simply just put the name.
#ex: today     #this calls/invokes function today 

#####################################
echo "------------"
echo "FUNCTION 1"
echo "------------"
echo

today() {
	date +"%A, %B %-d, %Y"   #the %A gets weekday (sunday, monday etc...); the %B gets Month, %-d gets the day (18,26, etc...); and %Y gets the year
}

echo -n "Today is "  # -n to print on same line
today                #calls function today
                     #we do not use $, it is not a variable, it is a function 

#####################################


#if you want to use arguments within the function, 


#####################################
echo
echo "------------"
echo "FUNCTION 2"
echo "------------"
echo

sum(){
	local total=0                    #local means that this variable is only visible within this function, locally...

	while [ $# -ne 0 ]; do
		arg=$1
		total=$((total + arg))   #we use (()) since it is a mathamatical operation (arithmetic command substitutuin)

		shift                    #to reduce number of argumnets
	done

	echo $total                      #outputs the solution; acts like a return statement

}

result=$(sum 1 2 3 4 5)                  #invokes the function, passes the parameters to it, and stores the output inside variable result (command substitution)

echo "The result is $result"

echo "local = $local"                    #This will show us that the variable local is empty, since it is local to the function and its scope does not leave the function




