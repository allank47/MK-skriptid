#!/bin/bash

# check if phpmyadmin already exists
PMA=$(dpkg-query -W -f='$(Status)' phpmyadmin 2>/dev/null | grep -c 'ok installed')
# if doesnt then
if [ $PMA -eq 0 ]; then
	# will be installed
	echo "phpmyadmin is being installed"
	apt install phpmyadmin
	echo "phpmyadmin has been installed"
# if phpmyadmin already exists
elif [ $PMA -eq 1 ]; then
	# exists
	echo "phpmyadmin already exists"
# no more
fi
# fin
