#! /bin/bash

varPath=$1
varStr=$2

if [ $# -ne 2 ]; then
	echo "not enough input"
	exit 1
elif [ $# -lt 1 ]; then
	echo "not enough input"
	exit 1
else 
	touch $varPath
	echo "$varStr" >> $varPath
fi
