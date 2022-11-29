#! /bin/bash

inDir=$1
inStr=$2

fileCount=100
lineCount=20
echo "current file name is " $0 '\n'
echo
echo "$inDir is 1. parameter"
echo
if [ $# -lt 1 ]; then
	echo "semihh, any of the parameters provided"
	exit 1
fi
if [[ -d $inDir ]]; then
fileCount=$(find "$inDir" -type f | wc -l)
lineCount=$( grep -rc "$inDir" -e "inStr" | wc -l)
echo "The number of files are " $fileCount " and the  number of matching lines are " $fileCount
else 
	echo " semih not a directry"
	exit 1
fi
