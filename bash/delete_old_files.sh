#! /bin/bash

#Удалять файлы старше
days=30

find /mnt/vol-01/appdata/confluence/backups -type f -mtime +$days -exec rm -rf {} \;
