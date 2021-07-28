#! /bin/bash

n1=$1
n2=$2

echo "Addition : $(( n1 + n2 ))"
echo $(( n1 * n2 ))
echo $(( n1 / n2 ))
echo $(( n1 - n2 ))
echo $(( n1 ** n2 ))
echo "$(( n1 % n2 ))"

