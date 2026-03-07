#!/bin/bash 

if [ $# -ne 3 ];then
 echo "enter the 3 numbers"
elif [ $1 -gt $2 ] && [ $1 -gt $3 ];then
 echo "$1 is the biggest"
elif [ $2 -gt $3 ];then
 echo "$2 is the biggest"
else
 echo "$3 is the biggest"
fi
