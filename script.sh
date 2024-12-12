#!/bin/bash

# FTP server details
FTP_SERVER="ftp.example.com"
FTP_USER="your_username"
FTP_PASS="your_password"
REMOTE_DIR="/path/to/remote/folder"
LOCAL_DIR="/path/to/local/destination"

# Use wget to download the folder recursively
wget --ftp-user="$FTP_USER" --ftp-password="$FTP_PASS" \
     -r -nH --cut-dirs=1 --no-parent \
     -P "$LOCAL_DIR" "ftp://$FTP_SERVER$REMOTE_DIR"
