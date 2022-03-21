#!/bin/bash
if [ "$1" == "" ]
then
echo "you forgot an IP address!"
echo "Syntax: ./snmaps.sh 192.168.0"

else
./iLping.sh $1 >ip.txt
for ip in $(cat ip.txt); do sudo nmap -T4 -A -p- -O $ip; done 
fi
