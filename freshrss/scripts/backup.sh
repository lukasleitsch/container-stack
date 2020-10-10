#!/bin/bash

cd /docker/freshrss
source .env
export PGPASSWORD="$DB_PASSWORD"
export PGDATABASE="$DB_DATABASE"
export PGUSER="$DB_USER"

docker-compose exec db pg_dump --clean --create | gzip --rsyncable > backups/freshrss_backup.sql.gz
