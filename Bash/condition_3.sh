#! /bin/bash

x=$1

if (( $x >= 10 ))
then
	echo "$1 is Greater than 10"
elif (( $x<=10 ))
then
	echo "$1 is less than 10"
else
	echo "$1 is Equal to 10"

fi
