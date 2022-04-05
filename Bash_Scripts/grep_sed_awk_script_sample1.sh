#!/bin/bash

									#####################################
		                                                                  #GREP - SED - AWK
			                                                #####################################

#####################################
echo "------"
echo 'grep:'
echo "------"
echo

#grep is where we can start applying our regular expression (RegEx) within a script
#to use a RegEx within a script, we use the grep command
#the grep will look for a pattern within a file

#basic usage of grep:

#ex: grep todo proj1.java              #this will find all the lines that has "todo" inside of the proj1.java script
#ex: grep -i todo proj1.java           # -i makes grep case insensative, so todo can be Todo tODO TODo etc...
#ex: grep -n -i todo proj1.java        # -n will display the line number that the match was found
#ex: grep -i todo proj1.java | wc -l   #to count the number of matches inside the file, we pipe it to wc -l  OR we use...
#ex: grep -c -i todo proj1.java        #the -c is similar to piping to wc -l, it will count the number of matches inside the file
#ex: grep -r -i todo ./                #the -r (recursive) will allow us to find all the todo patterns in all the files (current project)inside the directory specified (./)
#ex: grep -v -i todo proj1.java        #the -v will find every line that does NOT include the pattern todo

#we can also use advanced regular expressions, BUT we need to make grep into extended grep by adding the argument -E
# => to use complex regex with grep, we must do grep -E to get the extended form of grep

grep ",BAL," tester_file.sh #we specify , before and after BAL inorder to not get any false positives and get exactly what we want (wont match for random BAL in file)
echo
grep '^[^,]\+,\(BAL\|PIT\|CIN\|NE\)' tester_file.sh   #this is what we need to do if we do NOT use -E argument.
						      #in the basic form of grep, we need to escape meta characters...to avoid escaping, use extended version -E
grep -E '^[^,]+,(BAL|PIT|CIN|NE)' tester_file.sh      #this is with -E argument...It is much better and faster to type.



#####################################
echo
echo "------"
echo 'sed:'
echo "------"
echo

#used for search and replace
#sed works well especially for Linux especially for the search & replace, it does not work with Mac

echo "Search & Replace"
#if we use sed with an s, this means search and replace
#ex: sed 's/search/replace/' somefile.txt        #instead of search we have the pattern we want to look for, replace will be the pattern we want to replace with
#this will replace ONLY the first occurance of that pattern, first match...

#inorder to replace all occurances of that pattern we need to specify global (/g)
#ex: sed 's/search/replace/g' somefile.txt       #the /g at the end indicates global...
#ex: sed 's/search/replace/gi' somefile.txt      #the i at the end also makes it case insensative   OR we can put it at the begining like:
#ex: sed -i 's/search/replace/g' somefile.txt

echo "Search & Delete"
#to delete a line that has a given pattern we use /d at the end, without s/ at the beginning
#ex: sed '/search/d' somefile.txt

echo "Can also capture the buffer"
#the buffer allows us to save the pattern inside a register () and then use it later on (similar to what we saw in RegEx)
#ex: sed 's/\(search\)/xxx \1 xxx/g' somefile.txt     #we have to escape meta characters like () when not using the extended form of sed
						      #we saved the pattern in a register, and we can access this register with \1 argument
						      #what this does is that it replaces the pattern with xxx pattern xxx
						      #ex: if pattern is "word" it will become "xxx word xxx"

#ex: sed -E 's/(search)/xxx \1 xxx/g' somefile.txt    #to avoid escaping the () and other meta characters, we can use the extended form of sed by using -E (like in grep)

echo "Creating backup incase of errors"
#even tho we are doing some replacement/deleting/searching here, what if I did something wrong in the file?? For instance, if the searcg and replace was wrong, then i 
#damaged the file...
#So, what we can do is ask sed to create a backup of the original file
#ex: sed -i.orig 's/search/replace/g' somefile.txt
#when we use -i.orig this will do the search and replace normally BUT it will create a backup (with extension .orig) of the original file incase we damaged the new one...
#creates file called "somefile.txt.orig"
#the somefile.txt will be the damaged file and the somefile.txt.orig will be the original file that is not damaged.
#NOTE:
#if we run again this command on the damaged file...it will replace the backup file with the damaged file. So BE CAREFUL!!
#to replace the damaged file with the original file, we can do:
# cp somefile.txt.orig somefile.txt        #what this does is that it copies the original file and renames/replaces the damaged one...


#####################################
echo
echo "------"
echo 'awk:'
echo "------"
echo

#awk command is a very powerful command that allows you to process files by columns.
#basically, instead of reading line by line and splitting them based on the delimeter and then using the columns, we can use the awk command.

awk '{ print $1 }' awk_tester.txt   #this will extract the first column of file awk_tester.txt
#by default the delimeter will be white space 

#to specify a custom delimeter, we can use -F argument 
awk -F , '{ print $1 }' awk_tester.txt   #this sets delimeter to be a comma , 

#we can also use the printf inside of awk if we want to format the output
awk '{ printf "%.5f", $1 }' awk_tester.txt


