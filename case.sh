#!/bin/bash

echo "enter the number"
read n

case $n in
	1)echo "the variable entered by the user is a";;
	2)echo "the variable entered by the user is b";;
	3)echo "the variable entered by the user is c";;
	4)echo "the variable entered by the user is d";;	
	*)
	echo "invalid input"
esac
