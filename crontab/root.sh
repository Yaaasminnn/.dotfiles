00 00 * * * sh /home/loona/programming/scripts/journal_cleaner.sh
00 00 * * * rsync -av /home /backups/rsync/daily > /backups/rsync/logs/log_daily.txt
#00 00 * * 5 rsync -av /home /backups/rsync/weekly > /backups/rsync/logs/log_weekly.txt
