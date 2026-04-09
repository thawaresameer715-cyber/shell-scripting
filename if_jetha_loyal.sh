#!/bin/bash

<< disclaimer
This is just for infotainment purpose
disclaimer

read -p "enter the bandi" bandi
read -p "Jethat ka pyaar percent" pyaar

if [[ $bandi == "daya bhabhi" ]];
then 
	echo "jetha is loyal"
elif [[ $pyaar -ge 100 ]];
then
	echo "loyal"
else
	echo "not loyal"
fi
