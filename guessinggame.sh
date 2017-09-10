#!/usr/bin/env bash

check=0
counter=0

correct=$(ls |wc -l)

function evaluate {
	echo "Guess the number of files in current directory"
	read guess
	let counter=$counter+1
	if [[ $guess -eq $correct ]]
	then
		check=1
	else
		check=0
		if [[ $guess -gt $correct ]]
		then
			echo "Your guess is HIGHER than correct number"
		else
			echo "Your guess is LOWER than correct number"
		fi
		echo "Try again..."
	fi
}
while [[ $check -lt 1 ]]
do
	evaluate
done

if  [[ $check -eq 1 ]]
then
	echo "Wow, you're good! Just" $counter "attempt(s). Congrats!"
fi
