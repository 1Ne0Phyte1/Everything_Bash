#!/bin/bash

echo "enter 1st string"
read st1

echo "enter 2nd string"
read st2

if [ $st1 \< $st2 ]
then
	echo "string $st1 is smaller than $st2"
elif [ $st1 \> $st2 ]
then
	echo "string $st1 is greater than $st2"
else
	echo "strings match"
fi
