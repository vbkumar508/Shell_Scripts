#!/bin/bash

echo "Enter a number"
read n

i=2

while [ $i -le $n ]
do 
	echo $i
	i=$((i+2))
done
