#!/bin/bash

sudo apt update
sleep 10
sudo apt upgrade
# if no apache then install
apache2=$(dpkg-query -W -f='$(Status)' apache 2 2>/dev/null | grep -c "Installed")
if [ $apache2 -eq 0 ]; then
       echo "Apache2 is being installed"
       sudo apt install apache2
       echo "Apache2 has been set up"
       service apache2 status
       

# if apache install then do next
elif [ $apache2 -eq 1 ]; then
       #we have confirmed we have  apache
       echo "Apache2 Already exists"
# apache starting and showing status
       service apache2 start
       service apache2 status
fi
