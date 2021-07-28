#! /bin/bash

n1=$1
n2=$2

echo "Addition : $(expr $n1 + $n2 )"
echo $(expr $n1 \* $n2 )
echo $(expr $n1 / $n2 )
echo $(expr $n1 - $n2 )
#echo $(expr $n1 \** $n2 )
echo "$(expr $n1 % $n2 )"

