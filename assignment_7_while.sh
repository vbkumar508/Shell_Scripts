#!/bin/bash


echo "Enter your string: "
read str

length=${#str}

i=$((length-1))

while [ $i -ge 0 ]
do
	printf "%s" "${str:$i:1}"
	i=$((i-1))
done

echo ""

