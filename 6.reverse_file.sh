#!/bin/bash

while read line
do
    output="$line"$'\n'"$output"
done < "$1"

echo -e "$output"

