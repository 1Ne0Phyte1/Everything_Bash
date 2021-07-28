#! /bin/bash

echo "Press any key to continue"

while [ true ]
do
	read -t 3 -n 1
if [ $? = 0 ]
then
	echo "You have terminated the script"
	exit;
else
	echo "Press any key to stop the loop"
fi
done
