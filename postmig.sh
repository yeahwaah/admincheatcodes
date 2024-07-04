#!/bin/bash

# ask cpanel user input
echo "Enter the cPanel user:"
read cpuser

# Test print
cpip="$(echo $(grep IP /var/cpanel/users/$cpuser | cut -d = -f 2))"
echo $cpip

# list domains under cpanel user
cpdom="$(echo $(grep $(echo $cpuser) /etc/userdomains | cut -d : -f 1))"

for i in $cpdom
do
echo " "
echo " "
echo "Testing $i if it works"
echo "HTTP 200 result is expected!"
echo "Result --> " $(curl -I -s $i --resolve $i:80:$cpip | grep -a 'HTTP')
echo " ----------------------------------------------"
done

