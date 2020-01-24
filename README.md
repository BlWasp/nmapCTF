# nmapScriptHTB

This is the just a little bash script that permit to perform a Nmap scan optimized for Hack The Box or Root Me use.
First it will execute a very fast scan on the 65535 ports with a --min-rate of 10000 just to check which ports are open or closed.
Then, it perform a -sC and a -sV scans on the open ports.

Use
===

`./scriptNmap.sh targetIP`
