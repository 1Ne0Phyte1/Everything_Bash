#!/bin/bash

for (( i=0; i<=10; i++ ))
do
	if [ $i -gt 3 ] || [ $i -eq 7 ]
	then
		continue
	fi
	echo $i
done
