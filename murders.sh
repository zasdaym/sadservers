#!/usr/bin/env bash

pause() {
	echo
	read -p 'Press enter to continue...'
	echo
}

main() {
	echo "Reading instructions"
    cat instructions
	pause

	echo "Reading clue"
    grep CLUE mystery/crimescene
	pause

	echo "Find all Annabel (witness)"
	grep Annabel mystery/people
	pause

	echo "Check all Annabel interviews"
	streets=($(grep Annabel mystery/people | awk -F , '{print $1}' | awk '{print $5 "_" $6}'))
	lines=($(grep Annabel mystery/people | awk -F , '{print $2}' | awk '{print $2}'))

	let "n = ${#streets[@]} - 1"
	for i in $(seq 0 ${n}); do
		sed -n "${lines[$i]}p" "mystery/streets/${streets[$i]}"
		interview_number=$(sed -n "${lines[$i]}p" "mystery/streets/${streets[$i]}" | awk '{print $3}' | tr -d '#')
		cat "mystery/interviews/interview-${interview_number}"
		pause
	done

	echo "Find all vehicles with L337"
	grep -A 6 L337 mystery/vehicles
	pause

	echo "Find all vehicles with L337 + Honda"
	grep -A 6 L337 mystery/vehicles | grep -A 5 Honda
	pause

	echo "Find all vehicles with L337 + Honda + Blue"
	grep -A 6 L337 mystery/vehicles | grep -A 4 Blue
	pause

	echo "Find the owner which height is about 6 ft"
	grep -A 6 L337 mystery/vehicles | grep -A 4 Blue | grep -B 1 "Height: 6" | grep 'Owner: ' | cut -c 7-
	pause
}

main
