#!/bin/bash

if [ $# -eq 0 ]; then
	read -p "Enter the file path: " path
	
	$0 $path
	exit 0
fi

if [ $# -eq 1 ] && [ -f $1 ] && [ $1 == "BlosumNoHeader.txt" ]; then
	option="ok"

	while [ $option != "-e" ]; do
		echo
		echo "1) Option -d to display the content of the file on the terminal"
		echo
		echo "2) Option -s to search for an amino acid name and display the all scores for that amino acid"
		echo
		echo "3) Option -e to exid the code"
		echo

		read -p "Choose one of these 3 option: " option
		echo "You chose option: $option"

		case $option in 

			-d)
				cat $1
				;;

			-s)
				echo
				read -p "Enter name of amino acid: " amino
				grep -E "^$amino" BlosumNoHeader.txt
				;;

			-e)
				echo
				echo "You have exited!"
				exit 0
				;;

			*)
				echo
				echo "Invalid input" >&2
				break
		esac
	done

elif [ $# -gt 1 ]; then
	echo "Only pass one argument, not more."

else
	echo "Incorrect file name..."

fi


