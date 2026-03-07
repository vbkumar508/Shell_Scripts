#!/bin/bash

DIRECTORY="/home/ec2-user/scripts"
DAYS="28"

echo "Deleting files in $DIRECTORY older than $DAYS days."

find "$DIRECTORY" -type f -mtime +$DAYS -delete

