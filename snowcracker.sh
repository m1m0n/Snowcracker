#!/bin/bash

#BY: M1M0N

display_usage() {  
	echo -e "Usage: ./snowcracker.sh <Wordlist> <File> <Flag Format>" 
	} 
	if [  $# -ne 3 ]
	then 
		display_usage
		exit 1
	else
		cat $1 | while read line; do
  		output=$(stegsnow -C -Q -p $line $2 | grep -i $3)
  		if [ $? -ne "1" ]
  		then
  			echo "Password is: $line"
  			echo $output
  			break
  		fi
  	done
	fi

