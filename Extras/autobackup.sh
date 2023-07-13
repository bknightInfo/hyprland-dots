#!/bin/bash
ADDRESS='192.168.1.155'
USERNAME='bknightinfo'
TIME=$(date +%b-%d-%y)            
DESDIR=~/.backups     
FILE=backup-$TIME.tar.gz                     
find ~/.backups/* -mtime +31 -delete
tar -cpzf $DESDIR/$FILE ~/Documents ~/Pictures ~/Downloads
rsync -a --delete ~/.backups $USERNAME@$ADDRESS:/volume1/Backups/linux/
