#!/bin/bash

#file backup script

#This script will require you to enter your directory path in the BACKUP_DIR variable

#check if file name is provided

if [ -z "$1" ]; then
    echo "usage: provide file name/path: ScriptName fileName"
    exit 1
fi

#backup file

FILE=$1
#here you can enter your backup directory
BACKUP_DIR="enter backup directory path here"

#command to backup file

cp "$FILE" "$BACKUP_DIR/$(basename "$FILE")-$(date +%Y%m%d%H%M%S)"

#check if backup was successful
if [ $? -eq 0 ]; then
    echo "$FILE BACKED UP SUCCESSFULLY"
    else
        echo "BACKUP FAILED"
fi