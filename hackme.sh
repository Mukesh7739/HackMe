#!/bin/bash
echo "Starting Pentest... Just Wait"
#Some Inputs
read -p "Enter IP or URL :" ip;
echo "We are Pentesting on '$ip'"
rm -rf nMap
rm -rf nikto.log
mkdir nMap
nmap -p- -Pn -T4 -oN nMap/initial $ip;
nikto -h $ip | tee nikto.log;
enum4linux -a $ip | tee nikto.log
