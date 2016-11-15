# Rita Alsattah 10154610
# Zina Al-Sabbagh 10161380

#!/bin/bash

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
