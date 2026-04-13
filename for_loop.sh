#/bin/bash
#
#Ths is for for loop

for ((num=1; num<=5; num++))
do
	mkdir demo$num
done
	
	
	
for num in {1..5}
do
    mkdir demo_$num
done
