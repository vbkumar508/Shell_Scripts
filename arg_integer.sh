#!/bin/bash 
echo "The integer arguments are:" 
for arg in "$@" #($@,take the arguments as seperate words with spaces)
do 
if [[ "$arg" =~ ^[0-9]+$ ]] #(^ abd $ start and end the string)
then   
echo "$arg" 
fi 
done
