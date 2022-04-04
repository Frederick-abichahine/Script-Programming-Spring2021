#!/bin/bash

                                                                        #####################################
                                                                                       #PRINTF  
								 	#####################################

#printf (f stands for formatting) is a special print command; It allows you to format how you want to print the output on the terminal.
#for instance if you want to do left or right align, and if you want to send variables within the code.

weekday=Thursday
month=May
day=16
hr=3
min=5
ampm=pm

printf "%s, %s %d, %d:%02d%s\n" \
	$weekday $month $day $hr $min $ampm

#after printf we need to write the format of the output.
#the %s indicates that it is a string, so in this case the first variable is a string
#the %d indicates that it is a digit
#the %02d will show two numbers, the 0 means the leading 0 and the 2 means how many digits
#ex: if we have a number 1, this will show as 01 (leading 0 and total digits are 2). If we have 30, since it is already 2 digits, we can NOT have any leading 0s so it will
#show as 30 and not 030...

# => the format of the line that will be printed in this case will have a string first (weekday), followed by a string (month), then a digit (16), then a digit (3), 
#then : , then 2 digits (05) with a possible leading zero (2 zeros if number is 0), then a string(ampm).


#####################################


#if we have a floating point, we use f, BUT before the f we can write the number of precesion / number of digits of after decimal point.
#in this case, the %.2f indicates 2 digits after decimal point.

printf "Pi is ~ %.2f\n" 3.14159265359 #here we specified the value after the "" instead of having a variable for it...

#we could do it like this also...
pi=3.14159265359
printf "Pi is ~ %.2f\n" $pi


#####################################


#we can also use printf to indent and align
#for example if we want to indent and align numbers 1 2 3, we can put 10 before the d (%10d) which indicates 10 slots so in this case (9 spaces then one digit)

printf "%10d %10d %10d\n" 1 2 3 	#this will right align (since we used 10, the number will be preceeded with 9 spaces to account for the 10)
printf "%10d %10d %10d\n" 100 1000 1000000000000

printf "%-10d %-10d %-10d\n" 1 2 3 	#this will left align due to "-"
printf "%-10d %-10d %-10d\n" 100 1000 1000000000000
