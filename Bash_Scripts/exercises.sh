#!/bin/bash


echo
echo "----"
echo "Q1:"
echo "----"
echo

ls -l | grep -E "^...x..x..x" | wc -l

#################################

echo
echo "----"
echo "Q2:"
echo "----"
echo

grep -E "(\w+) \1 \1" awk_tester.txt  #PAY ATTENTION!!! DO NOT use 3 \1\1\1 since this will capture 4 since it includes the original register too...

#################################

echo
echo "----"
echo "Q3:"
echo "----"
echo

#grep -E "^@.*\D$" awk_tester.txt      #\D will NOT work when using argument -E, use argument -P to make it work!!!
#or
grep -E "^@.*[^0-9]$" awk_tester.txt  #DO THIS


#################################

echo
echo "----"
echo "Q4:"
echo "----"
echo

# ABCCBA
# ABCDCBA

grep -E "(\w)(\w)(\w)\w?\3\2\1" awk_tester.txt  #4th doesnt need to be in a register. we could also use . instead of \w but it will match spaces too!  


#################################

echo
echo "----"
echo "Q5:"
echo "----"
echo

#cp *.sh ~/scripts
echo "Done!"


#################################

echo
echo "----"
echo "Q6:"
echo "----"
echo

#chmod o-xw script.sh
#chmod ug+xw script.sh
echo "Done!"


#################################

echo
echo "----"
echo "Q7:"
echo "----"
echo

grep -E -v "^#" BLOSUM.txt > BlosumNoHeader.txt
echo "Done!"


#################################

echo
echo "----"
echo "Q8:"
echo "----"
echo

#grep -v '^*' BlosumNoHeader.txt | awk '{ print $1" "$2" " $3" " $4" " $5" "$6" "$7" "$8" "$9" "$10" "$11" "$12" "$13" "$14" "$15" "$16" "$17" "$18" "$19" "$20" "$21" "$22" "$23" "}' | tee BlosumNoHeader2.txt
#or
grep -v "^*" BlosumNoHeader.txt | awk '{for(i=1;i<=NF-1;i++) printf $i" "; print ""}' | tee BlosumNoHeader2.txt

#NF indicates number of columns, Number of Fileds (NF)


#################################

echo
echo "----"
echo "Q9:"
echo "----"
echo

#change order of E and K
#change col 7 with col 12

awk '{for(i=1;i<=6;i++) printf $i" "; printf $12" "; for(i=8;i<=11;i++) printf $i" "; printf $7" "; for(i=13;i<=NF;i++) printf $i" "; print""}' BlosumNoHeader2.txt > BlosumNoHeader3.txt

