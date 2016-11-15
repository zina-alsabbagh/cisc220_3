# Rita Alsattah 10154610
# Zina Al-Sabbagh 10161380

#!/bin/bash

read -p "Insert a list of words: " -a words

lenArr=${#words[*]}
ctr=0

for ((n=0; n<lenArr; n++)) ; do
	backword=""
	word=${words[n]}
	for ((i=${#word}-1; i>=0; i--)) ; do
		backword="$backword${word:$i:1}";
	done
	words[ctr]=$backword
	((ctr++))

done

echo "Output: ${words[*]}"
