#! /bin/bash

# Скрипт положить, например, в файл /etc/cron.d/delete_confluence_backup.sh
# Добавить в /etc/crontab задание, выполнять каждый день в 01:00.

# Удалять резервные копии Confluence
# 0 1 * * *       root    /etc/cron.d/delete_confluence_backup.sh >/dev/null 2>&1

#Удалять файлы старше
days=14

find /mnt/vol-01/appdata/confluence/backups -type f -mtime +$days -exec rm -rf {} \;
