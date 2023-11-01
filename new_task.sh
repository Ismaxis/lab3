#!/bin/bash

name="./"$1.sh
touch $name 
echo "#!/bin/bash" > $name
chmod +x $name
