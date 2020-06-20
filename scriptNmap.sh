#! /bin/bash

ip="${1}"
portL=""

#First scan to detecte all the open TCP ports
echo "Scanning open TCP ports"
nmap -p- --min-rate 1000 $ip > firstScan

while read line
do
	if [[ ${line:0:1} =~ [0-9] ]]
	then
		portL="${portL}${line%%/*},"
	fi
done < firstScan
echo $portL

#Second scan to scan with default and version scans only the open ports
echo "Scanning protocols and versions on open TCP ports"
nmap -p $portL -sC -sV $ip

rm firstScan


portL=""
#Third scan to detecte all the UDP open ports
echo "Scanning open UDP ports"
nmap -p- --min-rate 500 -sU $ip > secondScan

while read line
do
	if [[ ${line:0:1} =~ [0-9] ]]
	then
		portL="${portL}${line%%/*},"
	fi
done < secondScan
echo $portL

#Fourth scan to scan with default scans only the open ports
echo "Scanning protocols and versions on open UDP ports"
nmap -p $portL -sU -sC -sV $ip

rm secondScan
