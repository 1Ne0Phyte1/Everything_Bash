#! /bin/bash

echo "Enter filename name to create : "
read filename

if [ -f $filename ]
then
	echo "$filename exists"
else
	echo "$filename doesnot exixts"
	echo "Creating $filename"
	touch $filename
fi


