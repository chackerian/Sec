#!/bin/bash
# Addition 1: Count amount of hosts discovered and display #
# Addition 2: Add colors
clear
echo
echo -e $COLOR_NONE "Enter first 3 octets of IP"
echo "Ex: root@kali:~#192.168.1"
echo 
read octet
for i in `seq 1 255`; do
	ping -c 1 $octet.$i | grep "bytes from" | cut -d " " -f4 | cut -d ":" -f1 &
done

