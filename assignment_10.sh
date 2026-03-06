#!/bin/bash


for arg in "$@"
do
	if [[ $arg =~ ^[[:digit:]]+$ ]];then
	
		echo "$arg"
	fi

done
