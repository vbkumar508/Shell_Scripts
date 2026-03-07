#!/bin/bash

#read input
read -p "Enter number of rows: " n

num=1


for((i=1; i<=n; i++))   #(where i loops the outerloop i.e rows, it loops through i - 1 to n)
do
	for((j=1; j<=i; j++))  #(where j loops the innerloop i.e rows, it loops through 1 - i)
	do
		echo -n "$num"  #(prints without a line)
		((num++))	
	done
	echo #(prints a newline at the end of each row) 
done
