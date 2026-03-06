#!/bin/bash

{
Threshold=20


echo "Date:  $(date)"
echo " "

echo "Checking RAM..."
free -m | awk -v t=$Threshold '/Mem: / { usage=($3/$2)*100;
if ( usage > t )
       	printf " Warning RAM Used Above Threshold -> %.2f%%\n", usage"%"; 
else 
	printf " Normal RAM Usage Below Threshold -> %.2f%%\n", usage"%"}'	
echo " "

echo "Checking DISK..."
df -h | awk -v t=$Threshold 'NR>1 { 
	if ( $5+0 > t )
	       	printf " Warning Disk Usage high on %s -> %s\n",$6,$5; 
		found=1
	}

END {
	if(!found)
		printf " All disk usages are within threshold."}'
}  | mail -s "System Performance Report" vbkumar508@gmail.com
