#!/bin/bash

echo "Enter a string:"
read string

i=$(echo -n "$string" | wc -c)

while [ $i -gt 0 ]
do
    char=$(echo -n "$string" | cut -c $i)
    echo -n "$char"
    ((i--))
done

echo 

