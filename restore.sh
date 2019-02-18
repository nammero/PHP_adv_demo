#!/bin/bash

set -e

if [ "$1" != "" ]; then
	FOLDER_PATH=backups\/$1
#	echo "Folder path: $FOLDER_PATH"
else
	echo "No folder name!"
	exit 0
fi

gzip -d ~/$FOLDER_PATH/db-dump.sql.gz
mv ~/$FOLDER_PATH/db-dump.sql ~/

unzip ~/$FOLDER_PATH/uploads.zip -d uploads
mv ~/$FOLDER_PATH/uploads/* ~/backend/web/uploads

echo "Restore finished!"
