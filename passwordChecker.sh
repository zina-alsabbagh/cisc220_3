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
