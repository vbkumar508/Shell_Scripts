#!/bin/bash

echo "Enter the file or directory name"
read name

echo -e "\n\n$name is renamed to:"

new_name=${name,,}

# Rename the file or directory
mv "$name" "$new_name"
echo -e " $new_name\n"

