#!/bin/bash

									#####################################
                                                                               #ARITHMETIC CALCULATIONS
									#####################################

#The difference between the arithmetic calculation and the command substitution is the number of parenthesis we will be using.
#if we use a single parenthesis () after the $ this is a command substitution.
#if we want to do a mathimatical operation, we use double parenthesis (()) afteer the $
#double parenthesis indicates an arithmetic operation 
#it can also be done via "expr" rather than $(())

echo "5 * 20 - 10 + 5 = $((5 * 20 - 10 + 5))" #notice the spaces, they are important!
echo

#division is integer base
echo "pi =~ $((22/7))" #this will give an integer 3, not a decimal...

#to deal with floating points/decimals, we use the "bc" command
#the bc command can be used to deal with and perform complex math

echo -n "pi =~ " #the -n allows us to print on the same line 
echo "scale=3;22/7" | bc #the scale gives us the number of digits after the decimal point (in this case we put 3), then pipe to bc

