# Rita Alsattah 10154610
# Zina Al-Sabbagh 10161380

#!/bin/bash

printf "\n"
echo "[1] Minimum length of 8 characters."
printf "\n"
echo "[2] Must contain at least one numeric character."
printf "\n"
echo "[3] Must contain at least one of the following non-alphabetic characters: @, #, $, %, &, *, +, -, =."
printf "\n"
echo "Password is "Weak" when one condition is satisfied, "Moderate" when two conditions are satisfied, and "Strong" if all are satisfied."
printf "\n"

read -p "Please enter a password: " -s pass

condition=0

if (( ${#pass}>=8 )) ; then
	((condition++))
fi

if [[ $pass =~ [0-9] ]] ; then
	((condition++))
fi

if [[ $pass =~ [@#$%*+-=\&] ]] ; then
	((condition++))
fi


if (( $condition == 3 )) ; then
	echo "Strong"
elif (( $condition == 2 )) ; then
	echo "Moderate"
elif (( $condition == 1 )) ; then
	echo "Weak"
else
	echo "Invalid password"
fi
