#!/bin/bash
#nmap scans
host=70
subnet=10.10.30
while [ $host -le 71 ]; do
	nmap -sT $subnet.$host>>$subnet.${host}scan.txt
	nmap -sU $subnet.$host>>$subnet.${host}scan.txt
	nmap –sP $subnet.$host>>$subnet.${host}scan.txt
	nmap -sR $subnet.$host>>$subnet.${host}scan.txt
	nmap-sS -P0 $subnet.$host>>$subnet.${host}scan.txt
	nmap -sN $subnet.$host>>$subnet.${host}scan.txt
	nmap -sF $subnet.$host>>$subnet.${host}scan.txt
	nmap -sW $subnet.$host>>$subnet.${host}scan.txt
	nmap -sX $subnet.$host>>$subnet.${host}scan.txt
	nmap -sO $subnet.$host>>$subnet.${host}scan.txt
	nmap -sL $subnet.$host>>$subnet.${host}scan.txt
	let host++
done
