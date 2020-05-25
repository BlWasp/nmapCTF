# nmapScriptHTB

This is the just a little bash script that permits to perform a Nmap scan optimized for Hack The Box, Root Me or CTF use.
The goal is to perform a very fast check on the 65535 ports with TCP and UDP to verify which ports are open or close, and then, the script realizes default and version scans only on the open ports.

You can change the min-rate to apdate it to your connection.

Use
===

`sudo ./scriptNmap.sh targetIP`
