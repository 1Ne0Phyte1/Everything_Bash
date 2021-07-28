#! /bin/bash

select Fruits in Mango Banana Apple Grape
do
	case $Fruits in
	Mango)
		echo "Mango Selected";;
	Banana)
		echo "Banana Selected";;
	Apple)
		echo "Apple Selected";;
	Grape)
		echo "Apple Selected";;
	*)
		echo "ERROR! Plz select a valid Number";;
	esac
done
