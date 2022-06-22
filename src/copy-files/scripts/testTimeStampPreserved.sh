#!/bin/bash

# checks that file was successfully copied and timestamp of the file in target is not newer than the timestamp of source file
if ! test -f "src/copy-files/source/$1"; then
    echo "src/copy-files/source/$1 doesn't exist."
    exit 1
fi

if ! test -f "src/copy-files/target/$1"; then
    echo "src/copy-files/target/$1 doesn't exist."
    exit 1
fi


if [ "src/copy-files/source/$1" -ot "src/copy-files/target/$1" ]; 
then
    echo "Timestamp for $1 file in source and target directories aren't equal";
    exit 1;
fi
