#!/bin/bash

car=('BMW' 'Nano' 'Honda')

car[2]='Benz'

echo ${car[@]}

echo ${!car[@]}

echo ${#car[@]}
