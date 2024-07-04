#!/bin/bash

# ask cpanel user input
echo "Enter the cPanel user:"
read cpuser

# Test print
echo $(grep IP /var/cpanel/users/$cpuser)
