#! /bin/bash

ip="${1}"
portL=""

#First scan to detecte all the open ports
nmap -p- --min-rate 10000 $ip > firstScan

while read line
do
	if [[ ${line:0:1} =~ [0-9] ]]
	then
		portL="${portL}${line%%/*},"
	fi
done < firstScan
echo $portL

#Second scan to scan with default scans only the open ports
nmap -p $portL -sC -sV $ip

rm firstScan
