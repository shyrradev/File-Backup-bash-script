#!/bin/bash

#file backup script

#check if file name is provided

if [ -z "$1" ]; then
    echo "usage: provide file name/path"
fi

#backup file

FILE=$1
BACKUP_DIR="enter backup directory path"

#backup

cp "$FILE" "$BACKUP_DIR/$(basename "$FILE")-$(date +%Y%m%d%H%M%S)"

#check if backup was successful
if [ $? -eq 0 ]; then
    echo "$FILE BACKED UP SUCCESSFULLY"
    else
        echo "BACKUP FAILED"
fi