#!/bin/bash

echo "enter a string"
read string

len=${#string}
rev=""               #(where rev is a command used to reverse the string#)

while [ $len -gt 0 ]
do
	len=$((len-1))
	rev="$rev${string:$len:1}"    #(where $rev will reverse the string,len is taken from the variable,1 is used to take one character)
done

echo "Reversed string: $rev"

