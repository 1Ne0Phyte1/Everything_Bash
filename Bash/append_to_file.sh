#! /bin/bash

echo "Enter filename in which you want to append  : "
read filename

if [ -f $filename ]
then
	echo "$filename exists"
	echo "Enter the text"
	echo "**************"
	read filetext
	echo $filetext >> $filename
else
	echo "$filename doesnot exixts"
	echo "Creating $filename"
	touch $filename
	echo "Enter the text"
        echo "**************"
        read filetext
        echo $filetext >> $filename

fi


