#!/bin/bash

mapfile -t lines < $1

total=${#lines[@]}

for (( i=total-1; i>=0; i-- ));do
       	echo "${lines[$i]}"
done	       
