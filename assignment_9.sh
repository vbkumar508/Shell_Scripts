#!/bin/bash


echo "Enter your file or directory name: "
read name

echo $name | tr '[:upper:]' '[:lower:]'
