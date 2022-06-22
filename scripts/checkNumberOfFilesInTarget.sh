#!/bin/bash

# check that all the given files contains in target folder
existingFiles="$( /usr/bin/find target -type f | /usr/bin/sort | xargs )"
if [ "$existingFiles" != "$1" ]; 
then
    echo "Existing files: $existingFiles"
	echo "Expected files: $1"
    exit 1
fi
