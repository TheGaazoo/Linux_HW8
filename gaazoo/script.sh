#!/bin/bash

directory=$1

if [ -d $directory ]
	then
		echo "True"
		rm -f $directory/*.bak
		rm -f $directory/*.backup
		rm -f $directory/*.tmp
		exit 0
	else
		echo "False"
		exit 1
	fi
