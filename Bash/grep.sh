#!/bin/bash

echo "Enter file name to search"
read filename

if [ -f $filename ]
then
	echo "Enter the text to search"
	read grepvar
	grep -i -n $grepvar $filename
	echo "Word Repeated"
	grep -c $grepvar $filename

else
	echo "$filename doesn't exist"
fi
