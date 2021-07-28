#!/bin/bash

#$@ represents unlimited inputs to the arg
arg=("$@")
echo ${arg[0]} ${arg[1]} ${arg[2]}
