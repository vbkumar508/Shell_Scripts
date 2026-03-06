#!/bin/bash


echo "Enter your string : "
read str

for ((i=${#str}-1; i>=0; i--))
do
	printf "%s" "${str:$i:1}"
done

echo ""
