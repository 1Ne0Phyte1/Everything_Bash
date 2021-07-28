#! /bin/bash

x=$1
y=$2
if (( $x >= $y ))
then
	echo "$x is Greater than $y"
elif (( $x<=$2 ))
then
	echo "$x is less than $y"
else
	echo "$x is Equal to $y"

fi
