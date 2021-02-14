#!/bin/bash

#BY: M1M0N
# Note that I Have used -C to Compress the data if concealing, or uncompress it if extracting.
# You may need it sometimes and other times may not. So you will need to remove this option
display_usage() {  
	echo -e "Usage: ./snowcracker.sh <File> <Wordlist> <Flag Format>" 
	} 
	if [  $# -ne 3 ]
	then 
		display_usage
		exit 1
	else
		cat $2 | while read line; do
  		output=$(stegsnow -C -Q -p $line $1 | grep -i $3)
  		if [ $? -ne "1" ]
  		then
  			echo "Password is: $line"
  			echo $output
  			break
  		fi
  	done
	fi

