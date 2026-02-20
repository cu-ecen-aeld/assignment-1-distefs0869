#!/bin/sh

filesdir=$1
searchstr=$2

# Check for correct number of parameters
if [ $# -lt 2 ]
then
	echo "ERROR- Please specify 2 parameters: path and search-string."
	exit 1
# Ensure that the directory specified exists
else if [ ! -d $filesdir ]
	then
		echo "ERROR- path ${filesdir} does not exist!"
		exit 1	
	fi
fi

numFiles=$(find $filesdir -type f | wc -l)
numLines=$(grep -r $searchstr $filesdir | wc -l)

echo "The number of files are ${numFiles} and the number of matching lines are ${numLines}"

exit 0
