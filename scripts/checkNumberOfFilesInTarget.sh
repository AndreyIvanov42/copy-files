#!/bin/bash

existingFiles="$( /usr/bin/find target -type f | /usr/bin/sort | xargs )"

if [ "$existingFiles" != "$1" ]; then
    exit 1
fi
