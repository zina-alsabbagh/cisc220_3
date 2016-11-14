# Rita Alsattah 10154610
# Zina Al-Sabbagh 10161380

#!/bin/bash

luckyNumber() {
	numOne=$1
	total=0

	for i in $(seq = $((${#numOne}-1))) ; do
		num=${numOne:$i:1}
		total=$(($total+$num))
	done
	
	echo $total;


}

for ((j=1000;j<10000;j++)) ; do
	tracker=$j
	luckyNum=$(luckyNumber $tracker);
	if [[ $luckyNum -eq 7 ]] ; then
		echo $tracker;
done
