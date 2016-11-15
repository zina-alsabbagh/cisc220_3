# Rita Alsattah 10154610
# Zina Al-Sabbagh 10161380

#!/bin/bash

lastString="#Developed in CISC220"
bin="#!/bin"
bash="/bash"

find . -type f -executable | sed -i "s,$bin$bash,$bin$bash\n$lastString," *.sh
