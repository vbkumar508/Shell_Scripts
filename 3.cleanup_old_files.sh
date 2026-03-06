#!/bin/bash 
DIR="/home/ec2-user/testdir" 

find "$DIR" -type f -mtime +28 -size +10M -exec echo "Deleting: {}" \; -delete

