#!/bin/bash

if [$1 == ""]

then 
	echo "Please insert the script name\n";
	echo "Ex: imap";
	Exit;
else
	
	echo "Gathering information..." 

	dir=$(pwd)
	echo -n > $dir/n849327482734983274342384.txt
	
	ls -l
	chmod 666 n849327482734983274342384.txt;
	cd /usr/share/nmap/scripts/
	
	ls | grep $1 | while read -r line ; do
		nmap --script-help "$line" >> n849327482734983274342384.txt
	done

	cat n849327482734983274342384.txt | sed '/Starting Nmap/d'

	rm $dir/n849327482734983274342384.txt
fi
