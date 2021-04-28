#!/bin/bash

#BY: M1M0N
# Compress Mode : C to use -C, N Do not use it 
display_usage() {  
	echo -e "Usage: ./snowcracker.sh <File> <Wordlist> <Flag Format> <Compress Mode: C Or N>" 
	} 
	if [  $# -ne 4 ]
	then 
		display_usage
		exit 1
	else
		wordlist=$(echo $2 | grep -oE "[^/]+$")
		echo "[-] Trying To Bruteforce Using "$wordlist	
		case ${4^^} in 	
		C)
		cat $2 | while read line; do
			output=$(stegsnow -C -Q -p $line $1 | grep -i $3)
			if [ $? -ne "1" ]
			then
				echo "[+] Password is: $line"
				echo $output
				exit 1
			fi
  		done
		  ;;
		  *)
		cat $2 | while read line; do
			output=$(stegsnow -Q -p $line $1 | grep -i $3)
			if [ $? -ne "1" ]
			then
				echo "[+] Password is: $line"
				echo $output
				exit 1
			fi
  		done
          ;;
          esac
	fi
	