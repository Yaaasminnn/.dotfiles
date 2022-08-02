# min, hour, day of month, month, day of week 
00 00 * * * sh /home/loona/programming/scripts/journal_cleaner.sh
00 00 * * * rsync -av /home /backups/rsync/daily > /backups/rsync/logs/log_daily.txt
30 00 1 * * rsync -av --delete-after /home /backups/rsync/daily > /backups/rsync/logs/log_daily.txt
