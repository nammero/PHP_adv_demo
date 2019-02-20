#!/bin/bash

set -e

if [[ "$1" ]]; then
    if [[ $1 =~ ^[0-9]{2}\-[0-9]{2}\-[0-9]{4}$ ]]; then
        	FOLDER_PATH=backups\/$1
#	echo "Folder path: $FOLDER_PATH"
	else
	echo "Wrong folder name format! Try 'dd-mm-yyyy'"
	exit 1
    fi
else
	echo "No folder name!"
	exit 1
fi

gzip -dk ~/$FOLDER_PATH/db-dump.sql.gz
mv ~/$FOLDER_PATH/db-dump.sql ~/

unzip ~/$FOLDER_PATH/uploads.zip -d ~/backend/web/uploads

echo "Restore finished!"
