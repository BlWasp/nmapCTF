# nmapCTF

Just a little bash script to perform a Nmap scan optimized for Hack The Box, Root Me or CTF use.
The goal is to perform a very fast check on the 65535 TCP ports and the top UDP ports to verify which ports are open or close, and then, realize default and version scans only on the open ports.

You can change the min-rate in order to adapte it to your connection.

How to use it
=============

`sudo ./scriptNmap.sh targetIP`
