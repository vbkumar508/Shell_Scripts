#!/bin/bash

echo "Agruments in reverse order"

for (( i=$#; i>=1; i-- ))
do
	echo "${!i}" 
done
