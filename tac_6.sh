#!/bin/bash

while read line
do
    output="$line"$'\n'"$output"  #(where this line will prepend the $line to the $otput, $ allows escape sequences and \n prints the newline)
done < "$1"

echo -e "$output"
