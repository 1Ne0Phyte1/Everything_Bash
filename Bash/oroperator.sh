#! /bin/bash

age=30


#multiple ways

#if [ "$age" -gt 18 ] || [ "$age" -lt 40 ]
#if [[ "$age" -gt 18 || "$age" -lt 40 ]]
if [ "$age" -gt 18 -o  "$age" -lt 40 ]
then
	echo "Age is correct"
else
	echo "Age is incorrect"
fi
