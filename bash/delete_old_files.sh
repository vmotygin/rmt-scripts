#! /bin/bash

# Скрипт положить, например, в файл /etc/cron.d/delete_confluence_backup.sh
# Выполнять задание каждый день в 01:00.
# 0 1 * * *       root    /etc/cron.d/delete_confluence_backup.sh >/dev/null 2>&1

#Удалять файлы старше
days=30

find /mnt/vol-01/appdata/confluence/backups -type f -mtime +$days -exec rm -rf {} \;
