#!/bin/bash
#

num=0

while [[ $num -le 5 ]]
do 
	echo "Sameer"
	((num++))
done

num1=1
while [[ $num1 -le 10 ]]
do
	if (($num1 % 2 ==0))
	then
		echo "Even number are: $num1"
	fi
	((num1++))
done
