#!/bin/bash
SOURCE_DIR="/path/to/source"
DEST_DIR="/path/to/backup"
LOG_FILE="backup.log"

backup_name="backup_$(date +%Y%m%d_%H%M%S)"
dest_path="$DEST_DIR/$backup_name"

if cp -r "$SOURCE_DIR" "$dest_path"; then
    echo "$(date) - Backup successful: $dest_path" | tee -a $LOG_FILE
else
    echo "$(date) - Backup failed!" | tee -a $LOG_FILE
fi
