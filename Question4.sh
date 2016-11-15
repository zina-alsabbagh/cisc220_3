# Rita Alsattah 10154610
# Zina Al-Sabbagh 10161380

#!/bin/bash

lsblk --noheadings --raw | grep -e part | sed s/"K"/" K"/ | sed s/"M"/" M"/ | sed s/"G"/" G"/ | sort -h -k5,5 -k4,4n | tail -n2