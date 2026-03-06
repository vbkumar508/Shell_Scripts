#!/bin/bash

DIR=/home/ec2-user/Scripts

echo "Finding the files older then 28 days ago......"

find $DIR -type f -mtime +27 -printf "%s %p\n" | sort -nr | while read size file
do 
	echo "Deleting $file (Size: $size bytes)"
	rm -f $file
done

echo "Deleted older files...."



