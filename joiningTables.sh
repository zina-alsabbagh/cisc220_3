# Rita Alsattah 10154610
# Zina Al-Sabbagh 10161380

#!/bin/bash

student=($(cat student.txt))
declare -a student

course=($(cat course.txt))
declare -a course

student_course=($(cat student_course.txt))
declare -a student_course

for (( i=2;i<${#student_course[@]} ; i++))
do
	for (( k=2 ;k < ((${#course[@]}-1)) ; k+=2))
	do
		if [[ ${student_course[$i]} -eq ${course[$k]} ]]; then
			student_course[$i]=${course[(($k+1))]}
		fi
	done
	
	for (( j=2 ; j < ((${#student[@]}-1)) ; j+=2))
	do
		if [[ ${student_course[$i]} -eq ${student[$j]} ]]; then
			student_course[$i]=${student[(($j+1))]}
		fi
	done
	
done

echo "Student		Course"
printf "\n"

for (( i = 2 ; i < ${#student_course[@]} ; i++))
do
	if [[ $i%2 -eq 0 ]]; then
        printf "${student_course[$i]}		"
    else
		printf "${student_course[$i]}"
		echo""
	fi
done