# ~/UnixWorkbenchClassProject/ bash
# File: guessinggame.sh

files=$(ls -1 | wc -l | egrep -o '[0-9]')
i=0

function check {
	if [[ $guess -lt $files ]]
	then
		echo "Sorry, your guess is too low, try again."
	elif [[ $guess -gt $files ]]
	then
		echo "Sorry, your guess is too high, try again."
	elif [[ $guess -eq $files ]]
	then
		let i=1
		echo "Congrats!"
	else
		echo "Sorry, an error occurred"
	fi
}

while [[ i -eq 0 ]]
do
	echo "How many files are in the directory?"
	read guess
	check
done
