#!/bin/bash

# ask cpanel user input
echo "Enter the cPanel user:"
read cpuser

# Test print
echo $(grep IP /var/cpanel/users/$cpuser | cut -d = -f 2)

# list domains under cpanel user
echo $(grep $(echo $cpuser) /etc/userdomains | cut -d : -f 1) 
