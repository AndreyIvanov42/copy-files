#!/bin/bash

# checks that file was successfully copied and timestamp of the file in target is not newer than the timestamp of source file
if ! test -f "source/$1"; then
    echo "source/$1 doesn't exist."
    exit 1
fi

if ! test -f "target/$1"; then
    echo "target/$1 doesn't exist."
    exit 1
fi


if [ "source/$1" -ot "target/$1" ]; 
then
    echo "Timestamp for $1 file in source and target directories aren't equal";
    exit 1;
fi