#!/bin/sh

writefile=$1
writestr=$2

# Check for correct number of parameters
if [ $# -lt 2 ]
then
	echo "ERROR- Please specify 2 parameters: path and write-string."
	exit 1
fi

# Create the file and contents
path=$(dirname "$writefile")
if [ ! -d $path ]
then
	echo "Path ${path} does not exist, creating path.."
	mkdir -p $path
fi

echo $writestr > $writefile

exit 0
